Rails.application.routes.draw do
  resources :user_tasks
  resources :job_tasks
  resources :notes
  resources :resumes
  resources :jobs
  resources :users
  resources :user_notes

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/users/:id/jobs", to: "jobs#index"
  

end
