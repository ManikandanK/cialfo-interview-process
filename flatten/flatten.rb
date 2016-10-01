
class Array


  def my_flatten(n=nil)
    flattened = []

    self.each do |el|

      if el.is_a?(Array)
        if n.nil?
          flattened += el.my_flatten(n)
        elsif n > 0
          flattened += el.my_flatten(n-1)
        else
          flattened << el
        end
      else
        flattened << el
      end

    end
    flattened
  end

end
