# cialfo-interview-process


* anagram

    * anagrams? method is added in String base class
    * Usage: "momdad".anagrams?("dadmomm")

* flatten
    * my_flatten method is added in in Array base class
    * Usage:
        * [1,2,3,[4,5]].my_flatten
        * [1,2,3,[4,5,[1,2,3]]].my_flatten(2)


* scrap_data

    Usage:

    * bundle install (dependency "nokogiri" gem)

    * Run rake task to crawl the data with pagination

       *  rake crawl:college_data  # default first page

       *  rake crawl:college_data[page_number] // page_number can be 1,2,3


    * Open Scrap.html in Firefox browser. Implemented using jQuery Datatable with pagination. Please find screenshot for more details.




