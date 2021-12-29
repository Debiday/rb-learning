require './ceo'
require './sales-manager'
require './intern'

ali = Ceo.new(15, 20)
betty = SalesManager.new(15, 20)
charlie = Intern.new(1)

puts ali.total_compensation
puts betty.total_compensation
puts charlie.total_compensation