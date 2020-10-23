Rails.application.routes.draw do
  resources :teacher_klasses
  resources :student_klasses
  resources :klasses
  resources :students
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
