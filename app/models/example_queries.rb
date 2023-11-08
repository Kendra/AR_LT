
#Example queries for lightning talk

users = User.all
users.class

User.fantasy
users.where(kind: User.kinds[:fantasy])
users.where("age > ?", 50)

users.where("age > ?", 50).where(kind: User.kinds[:fantasy])
User.fantasy.where("age > ?", 50)

User.where("name like '%ol%'")

user1 = User.create(name:"", age: 66)
user1.errors
user1.errors.messages
user1.valid?

user1 = User.create!(name:"", age: 77)
user1 = User.create!(name:"Bob", age: 10)

user1 = User.create(name: "BOb nILb", age: 77)

old_users = User.older_than(88)

author = User.first
author.profiles

authors = User.joins(:profiles).where("profiles.position = 1")
authors.each do |a|
p a.bio
end

authors = User.joins(:profiles).select('users.*, profiles.bio').where("profiles.position = 1")
authors.each do |a|
  p a.bio
end

jane = User.where(id: 2).first
jane.organizations
jane.organizations.where(memberships: {status: :active})

authors = User.all
authors.joins(:organizations).merge(Membership.active).where(id: 2).select("organizations.name")

authors.joins(:organizations).merge(Membership.deleted)

kickedout = authors.joins(:organizations).merge(Membership.deleted).select("users.name as author, organizations.*")

kickedout.each do |k|
p  k.name + "  " + k.author
end















