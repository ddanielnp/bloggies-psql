# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 5.times do |i|
#   User.create(
#   name: "User#{i}",
#   email: "User#{i}@gmail.com",
#   password: "user123",
#   password_confirmation: "user123"
#   )
# end
#
# 5.times do |i|
#   Post.create(
#   title: "Post #{i+1}",
#   content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   user_id: 8
#   )
# end

# 5.times do |i|
#   Comment.create(
#   content: "Lorem Ipsum",
#   post_id: 20
#   )
# end
#
# 5.times do |i|
#   Comment.create(
#   content: "Lorem",
#   post_id: 21
#   )
# end

5.times do |i|
  Tag.create(name: "Tag #{i + 1}")
end
