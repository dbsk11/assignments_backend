Rails.application.routes.draw do
  resources :student_klasses
  resources :klasses
  resources :teacher_klasses
  resources :assignments
  resources :students
  resources :teachers 
end
