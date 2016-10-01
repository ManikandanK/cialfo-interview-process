require 'rake'
require 'open-uri'
require 'nokogiri'
require 'json'

namespace :crawl do

  task :college_data, [:page] do |t,args|
    page = args[:page] || 1
    url = "http://colleges.usnews.rankingsandreviews.com/best-colleges/rankings/national-universities/data?_page=#{page}"
    colleges = []

    doc = Nokogiri::HTML(open(url))

    doc.xpath('//*[@data-view="colleges-search-results-table-row"]').each do|college|
      college.xpath("td[1]/div[3]/span").text.match(/#(\d+)\s.*/)

      colleges << { :name => "#{college.xpath("td[1]/div[1]/a").text.strip}, #{college.xpath("td[1]/div[2]").text.strip}",
                    :rank => $1.to_i,
                    :tuition_fees => college.xpath("td[2]/div[1]").text.strip,
                    :total_enrollment => college.xpath("td[3]/div[1]").text.strip,
                    :acceptance_rate => nil,
                    :average_retention_rates => nil,
                    :graduation_rate => nil
                  }
    end

    begin
      available_json = File.read('./data.json')
      available_data = JSON.parse(available_json)
    rescue
      available_data = []
    end

    available_data +=colleges

    File.open("./data.json","w") do |f|
      f.puts JSON.pretty_generate(available_data)
    end

  end

end

