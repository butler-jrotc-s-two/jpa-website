Rails.application.routes.draw do

  resources :quizzes
  resources :questions
  resources :categories
  resources :question_formats
  
  root 'quizzes#new'
  
end
