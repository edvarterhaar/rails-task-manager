Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # LIST TASKS = READ ALL http://localhost:3000/restaurants
  get "tasks", to: "tasks#index"

  # ADD NEW TASK = CREATE GET http://localhost:3000/restaurants/new
  get "tasks/new", to: "tasks#new", as: :new_task

  # ADD NEW TASK = POST http://localhost:3000/restaurants
  post "tasks", to: "tasks#create"

  #VIEW TASK DETAILS = READ ONE http://localhost:3000/restaurants/4
  get "tasks/:id", to: "tasks#show", as: :task

  #EDIT TASK = UPDATE GET http://localhost:3000/restaurants/4/edit
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  #EDIT TASK = UPDATE PATCH http://localhost:3000/restaurants/4/
  patch "tasks/:id", to: "tasks#update"

  #REMOVE TASK = DELETE http://localhost:3000/restaurants/4
  delete "tasks/:id", to: "tasks#destroy", as: :destroy_task
end
