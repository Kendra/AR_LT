# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

#First clear the data
p "Clearing Tables"
User.destroy_all
Profile.destroy_all
Membership.destroy_all
Organization.destroy_all

#Create the seed data
p "Start the seed"
#Users
user1 = User.create!(name: "William Shakespeare", age: 85, kind: :tragedy)
user2 = User.create!(name: "Jane Austen", age: 73, kind: :romance)
user3 = User.create!(name: "Charles Dickens", age: 44, kind: :social)
user4 = User.create!(name: "Leo Tolstoy", age: 52, kind: :realist)
user5 = User.create!(name: "Mark Twain", age: 67, kind: :social)
user6 = User.create!(name: "Virginia Woolf", age: 32, kind: :modernist)
user7 = User.create!(name: "Ernest Hemingway", age: 89, kind: :modernist)
user8 = User.create!(name: "George Orwell", age: 20, kind: :social)
user9 = User.create!(name: "J.K. Rowling", age: 19, kind: :fantasy)
user10 = User.create!(name: "J.R.R. Tolkien", age: 99, kind: :fantasy)

#Profiles
user1.profiles.create!(bio: "Bill's bio", position: 1)
user1.profiles.create!(bio: "Bill's bio number 2", position: 2)
user1.profiles.create!(bio: "Bill's bio number 3", position: 3)
user2.profiles.create!(bio: "Jane's bio", position: 2)
user3.profiles.create!(bio: "Chuck's bio", position: 3)
user3.profiles.create!(bio: "Chuck's bio number 2", position: 3)
user4.profiles.create!(bio: "Leo's bio", position: 1)
user5.profiles.create!(bio: "Mark's bio", position: 2)
user6.profiles.create!(bio: "Virginia's bio", position: 3)
user7.profiles.create!(bio: "Ernie's bio", position: 1)
user8.profiles.create!(bio: "Georgie's bio", position: 2)
user9.profiles.create!(bio: "J.K's bio", position: 2)
user10.profiles.create!(bio: "J.R.R's bio", position: 2)

#Organizations
org1 = Organization.create!(name: "Supreme Author Club")
org2 = Organization.create!(name: "International Book Org")
org3 = Organization.create!(name: "Wine and Book Club")
org4 = Organization.create!(name: "Best Friends and Books Org")

#Memberships
#William Shakespeare
Membership.create(user: user1, organization: org1, role: "Supreme Leader", status: :active)
Membership.create(user: user1, organization: org2, role: "Alt Leader", status: :active)
#Jane Austen
Membership.create(user: user2, organization: org1, role: "Member", status: :active)
Membership.create(user: user2, organization: org2, role: "Member", status: :pending)
Membership.create(user: user2, organization: org3, role: "Coordinator", status: :inactive)
#Charles Dickens
Membership.create(user: user3, organization: org1, role: "Member", status: :deleted)
Membership.create(user: user3, organization: org4, role: "Member", status: :active)
#Leo Tolstoy
Membership.create(user: user4, organization: org2, role: "Treasurer", status: :inactive)
Membership.create(user: user4, organization: org3, role: "Treasurer", status: :active)
#Mark Twain
Membership.create(user: user5, organization: org1, role: "Member", status: :active)
Membership.create(user: user5, organization: org2, role: "Secretary", status: :active)
Membership.create(user: user5, organization: org3, role: "Member", status: :inactive)
#Virginia Woolf
Membership.create(user: user6, organization: org1, role: "Contributor", status: :active)
Membership.create(user: user6, organization: org2, role: "Member", status: :active)
Membership.create(user: user6, organization: org3, role: "Member", status: :pending)
Membership.create(user: user6, organization: org4, role: "Member", status: :pending)
#Ernest Hemingway
Membership.create(user: user7, organization: org1, role: "Contributor", status: :deleted)
Membership.create(user: user7, organization: org2, role: "Contributor", status: :active)
Membership.create(user: user7, organization: org3, role: "Member", status: :pending)
Membership.create(user: user7, organization: org4, role: "Member", status: :pending)
#George Orwell
Membership.create(user: user8, organization: org2, role: "Member", status: :active)
Membership.create(user: user8, organization: org3, role: "Secretary", status: :inactive)
#J.K Rowling
Membership.create(user: user9, organization: org1, role: "Vice Leader", status: :active)
Membership.create(user: user9, organization: org4, role: "Contributor", status: :active)
#J.R.R's Tolkien
Membership.create(user: user10, organization: org1, role: "Member", status: :deleted)
Membership.create(user: user10, organization: org2, role: "Member", status: :deleted)
Membership.create(user: user10, organization: org3, role: "Member", status: :deleted)
Membership.create(user: user10, organization: org4, role: "Member", status: :deleted)
p "Seed completed"










