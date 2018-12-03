class FlattenArray
  def self.flatten(array, results = [])
    array.each do |element|
      if element.class == Array
        flatten(element, results)
      else
        results << element unless element == nil
      end
    end
    results
  end
end
