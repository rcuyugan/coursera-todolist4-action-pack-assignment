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
{ username: "Fiorina", password_digest: "carly" },
{ username: "Trump", password_digest: "donald" },
{ username: "Carson", password_digest: "carsonbrain" },
{ username: "Clinton", password_digest: "benghazi" }
]



Profile.create! [
{ gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", user_id: 1 },
{ gender: "male",   birth_year: 1946, first_name: "Donald", last_name: "Trump" , user_id: 2 },
{ gender: "male",   birth_year: 1951, first_name: "Ben", last_name: "Carson" , user_id: 3 },
{ gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", user_id: 4 }
]


TodoList.create! [
{ list_name:"HP", list_due_date: "2017-08-02", user_id: 1 },
{ list_name:"Enemies", list_due_date: "2017-08-02", user_id: 2 },
{ list_name:3, list_due_date: "2017-08-02", user_id: 3 },
{ list_name:4, list_due_date: "2017-08-02", user_id: 4 }
]

TodoItem.create! [
{ due_date: "2017-08-02", title: "Jog1",  description: "run", completed: 0 , todo_list_id: 1 },
{ due_date: "2017-08-02", title: "Jog2",  description: "run", completed: 0 , todo_list_id: 1 },
{ due_date: "2017-08-02", title: "Jog3",  description: "run", completed: 0 , todo_list_id: 1 },
{ due_date: "2017-08-02", title: "Jog4",  description: "run", completed: 0 , todo_list_id: 1 },
{ due_date: "2017-08-02", title: "Jog5",  description: "run", completed: 0 , todo_list_id: 1 },
{ due_date: "2017-08-02", title: "Jog6",  description: "run", completed: 0 , todo_list_id: 2 },
{ due_date: "2017-08-02", title: "Jog7",  description: "run", completed: 0 , todo_list_id: 2 },
{ due_date: "2017-08-02", title: "Jog8",  description: "run", completed: 0 , todo_list_id: 2 },
{ due_date: "2017-08-02", title: "Jog9",  description: "run", completed: 0 , todo_list_id: 2 },
{ due_date: "2017-08-02", title: "Jog10",  description: "run", completed: 0, todo_list_id: 2 },
{ due_date: "2017-08-02", title: "Jog11",  description: "run", completed: 0, todo_list_id: 3 },
{ due_date: "2017-08-02", title: "Jog12",  description: "run", completed: 0, todo_list_id: 3 },
{ due_date: "2017-08-02", title: "Jog13",  description: "run", completed: 0, todo_list_id: 3 },
{ due_date: "2017-08-02", title: "Jog14",  description: "run", completed: 0, todo_list_id: 3 },
{ due_date: "2017-08-02", title: "Jog15",  description: "run", completed: 0, todo_list_id:  3 },
{ due_date: "2017-08-02", title: "Jog16",  description: "run", completed: 0, todo_list_id: 4 },
{ due_date: "2017-08-02", title: "Jog17",  description: "run", completed: 0, todo_list_id: 4 },
{ due_date: "2017-08-02", title: "Jog18",  description: "run", completed: 0, todo_list_id: 4 },
{ due_date: "2017-08-02", title: "Jog19",  description: "run", completed: 0, todo_list_id: 4 },
{ due_date: "2017-08-02", title: "Jog20", description: "run", completed:  0, todo_list_id: 4 }
]
