DchapmanIo::Application.routes.draw do
  root 'posts#index'

  devise_for :users, :path => "auth",
    :path_names   => {
    :sign_in      => 'login',
    :sign_out     => 'logout',
    :password     => 'secret',
    :confirmation => 'verification',
    :unlock       => 'unblock',
  }

  resources :posts

  get :blog, controller: 'posts', action: 'index'
end
