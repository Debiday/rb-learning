require './employee'

class Intern < Employee
  attr_reader :hourly_rate

  def initialize(hourly_rate)
    @hourly_rate = hourly_rate
    super(name, id)
  end

  def total_compensation
    hourly_rate * 2000
  end
end
