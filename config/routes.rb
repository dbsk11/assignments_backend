Rails.application.routes.draw do
  # Teacher Routes
  get './teachers', to: 'teachers#index'
  get './teachers/:id', to: 'teachers#show'
  get './teachers/login', to: 'teachers#login'
  get './teachers/stay_logged_in', to: 'teachers#stay_logged_in'

  # Student Routes
  get './students/', to: 'students#index'
  get './students/:id', to: 'students#show'
  get './students/login', to: 'students#login'
  get './students/stay_logged_in', to: 'students#stay_logged_in'

  # Assignment Routes
  get './assignments', to: 'assignments#index'
  get './assignments/:id', to: 'assignments#show'
  post './assignments', to: 'assignments#create'
  patch './assignments/:id', to: 'assignments#update'
  delete './assignments/:id', to: 'assignments#destroy'

  # TeacherKlasses Routes 
  get './teacherklasses', to: 'teacher_klasses#index'
end
