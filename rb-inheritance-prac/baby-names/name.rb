require 'csv'
require 'pry'

class Name
  attr_reader :year, :bio_gender, :ethnicity, :name, :count, :rank

  @@filename = 'Popular_Baby_Names.csv'

  def initialize(data)
    @year = year,
    @bio_gender = bio_gender,
    @ethnicity = ethnicity,
    @name = name,
    @count = count,
    @rank = rank
  end

  def self.find_by_name(name)
    data = CSV.read(@@filename, headers: true)
    result = []
    all_names = []
    data.each { |row| all_names << row[3].downcase}
    all_names.each do |n|
      if n == name
        result << n
      next
      end
    end
    puts result
  end

# puts Name.find_by_name('geraldine')

  def self.find_by_year(year)
    data = CSV.read(@@filename, headers: true)
    result = []
    all_years = []
    data.each { |row| all_years << row[0]}
    all_years.each do |y|
      if y == year
        result << y
      next
      end
    end
    puts result
  end
end

puts Name.find_by_year("2011")

