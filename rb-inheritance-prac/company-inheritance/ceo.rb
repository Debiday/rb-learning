require './employee'

class Ceo < Employee
  attr_reader :base_salary, :bonus

  def initialize(base_salary, bonus)
    @base_salary = base_salary + 1
    @bonus = bonus
    super(name, id)
  end

  def benefits
    super.push(:health_insurance)
  end


end
