require './employee'

class SalesManager < Employee
  attr_reader :base_salary, :estimated_annual_sales
  
  def bonus
    estimated_annual_sales * 0.1
  end
  
  def initialize(base_salary, estimated_annual_sales)
    @base_salary = base_salary
    @estimated_annual_sales = estimated_annual_sales
    @bonus = bonus
    super(name, id)
  end
end