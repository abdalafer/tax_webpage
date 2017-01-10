Rails.application.routes.draw do
  get '/' => 'main#index'
  get '/services' => 'main#services'
  get '/resources' => 'main#resources'
  get '/contact' => 'main#contact'
  get '/about' => 'main#about'
  get '/privacy_policy' => 'main#privacy_policy'
  get '/testimonials' => 'main#testimonials'
  get '/payment' => 'main#payment'
  post '/contact' => 'main#contact_post', defaults: { format: 'js' }


end
