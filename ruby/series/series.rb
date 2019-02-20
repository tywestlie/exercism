class Series
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def slices(num)
    number.split("")
  end

end
