# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
{ id: 1, username: "Fiorina", password_digest: "carly" },
{ id: 2, username: "Trump", password_digest: "donald" },
{ id: 3, username: "Carson", password_digest: "carsonbrain" },
{ id: 4, username: "Clinton", password_digest: "benghazi" }
]

Profile.create! [
{ gender: "female", first_name: "Carly", last_name: "Fiorina", birth_year: 1954, user_id: 1 },
{ gender: "male",   first_name: "Donald", last_name: "Trump", birth_year: 1946, user_id: 2 },
{ gender: "male",   first_name: "Ben", last_name: "Carson", birth_year: 1951, user_id: 3},
{ gender: "female", first_name: "Hillary", last_name: "Clinton", birth_year: 1947, user_id: 4}
]


TodoList.create! [
{ id: 1, list_name:"HP", list_due_date: Date.today + 1.year, user_id: 1 },
{ id: 2, list_name:"Enemies", list_due_date: Date.today + 1.year, user_id: 2},
{ id: 3, list_name:3, list_due_date: Date.today + 1.year, user_id: 3 },
{ id: 4, list_name:4, list_due_date: Date.today + 1.year, user_id: 4 }
]

TodoItem.create! [
{ due_date: Date.today + 1.year, title: "jog",  description: "test", completed: 1  , todo_list_id: 1},
{ due_date: Date.today + 1.year, title: "Jog2",  description: "run", completed:  1 , todo_list_id: 1 },
{ due_date: Date.today + 1.year, title: "Jog3",  description: "run", completed:  1 , todo_list_id: 1 },
{ due_date: Date.today + 1.year, title: "Jog4",  description: "run", completed:  1 , todo_list_id: 1 },
{ due_date: Date.today + 1.year, title: "Jog5",  description: "run", completed:  1 , todo_list_id: 1 },
{ due_date: Date.today + 1.year, title: "Jog6",  description: "run", completed:  1 , todo_list_id: 2 },
{ due_date: Date.today + 1.year, title: "Jog7",  description: "run", completed:  1 , todo_list_id: 2 },
{ due_date: Date.today + 1.year, title: "Jog8",  description: "run", completed:  1 , todo_list_id: 2 },
{ due_date: Date.today + 1.year, title: "Jog9",  description: "run", completed:  1 , todo_list_id: 2 },
{ due_date: Date.today + 1.year, title: "Jog10",  description: "run", completed:  1 , todo_list_id: 2 },
{ due_date: Date.today + 1.year, title: "Jog11",  description: "run", completed:  1 , todo_list_id: 3 },
{ due_date: Date.today + 1.year, title: "Jog12",  description: "run", completed:  1 , todo_list_id: 3 },
{ due_date: Date.today + 1.year, title: "Jog13",  description: "run", completed:  1 , todo_list_id: 3 },
{ due_date: Date.today + 1.year, title: "Jog14",  description: "run", completed:  1 , todo_list_id: 3 },
{ due_date: Date.today + 1.year, title: "Jog15",  description: "run", completed:  1 , todo_list_id: 3 },
{ due_date: Date.today + 1.year, title: "Jog16",  description: "run", completed:  1 , todo_list_id: 4 },
{ due_date: Date.today + 1.year, title: "Jog17",  description: "run", completed:  1 , todo_list_id: 4 },
{ due_date: Date.today + 1.year, title: "Jog18",  description: "run", completed:  1 , todo_list_id: 4 },
{ due_date: Date.today + 1.year, title: "Jog19",  description: "run", completed:  1 , todo_list_id: 4 },
{ due_date: Date.today + 1.year, title: "Jog20", description: "run", completed:  1 , todo_list_id: 4}
]



# todo_item_array1 = []                                                         
# (1..20).each do |num|
#   todo_item_array1 <<  TodoItem.create!(due_date: Date.today + 1.year, title: "Title#{num}", description: "Jog#{num}", completed: "0")                 
# end                                                                        

