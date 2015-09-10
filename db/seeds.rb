# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Record.create(project_name: "Android Flagship", status: "pass", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "green", third_party: false)
Record.create(project_name: "iOS Flagship", status: "fail", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "red", third_party: false)
Record.create(project_name: "Android Auto", status: "pass", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "green", third_party: false)
Record.create(project_name: "iOS Auto", status: "fail", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "red", third_party: false)
Record.create(project_name: "Web", status: "pass", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "green", third_party: false)
Record.create(project_name: "Local", status: "fail", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "red", third_party: false)
Record.create(project_name: "Third Party", status: "pass", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "green", third_party: true)
Record.create(project_name: "Fouth Party", status: "fail", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "red", third_party: true)
Record.create(project_name: "Fifth Party", status: "pass", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "green", third_party: true)
Record.create(project_name: "Eigth Party", status: "fail", comments: "Test Comment", created_at: "2015-08-17 21:15:54", updated_at: "2015-08-17 21:15:54", color: "red", third_party: true)