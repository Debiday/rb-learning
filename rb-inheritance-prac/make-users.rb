class User
  def initialize(name)
    @name = name
  end

  def self.create_multiple(users)
    users.map do |user|
      User.new(user[:name])
    end
end
end

users = [
    {name: "Sal"},
    {name: "Brian"},
    {name: "Megan"}
]

puts User.create_multiple(users)