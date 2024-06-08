class Calculator
  
  #parsing string and rejecting special characters to find the sum of the collection. 
  def add(str)
    format_string = str.scan(/-?\d+/).map(&:to_i)
    negative_collection = format_string.count(&:negative?)
     if negative_collection > 0
        negative_numbers = format_string.reject(&:positive?)
        p "Input data contains the following negative numbers ---- #{negative_numbers.join(",")} ----, please try again."
     else
        format_string.sum
     end
  end
end
