Rails.application.routes.draw do
  namespace :api do
    get    '/gondor'         => 'gondor#index'
    post   '/gondor'         => 'gondor#create'
    get    '/gondor/:id'     => 'gondor#show'
    patch  '/gondor/:id'     => 'gondor#update'
    delete '/gondor/:id'     => 'gondor#destroy'

    get    '/lothlorien'     => 'lothlorien#index'
    post   '/lothlorien'     => 'lothlorien#create'
    get    '/lothlorien/:id' => 'lothlorien#show'
    patch  '/lothlorien/:id' => 'lothlorien#update'
    delete '/lothlorien/:id' => 'lothlorien#destroy'

    get    '/mirkwood'       => 'mirkwood#index'
    post   '/mirkwood'       => 'mirkwood#create'
    get    '/mirkwood/:id'   => 'mirkwood#show'
    patch  '/mirkwood/:id'   => 'mirkwood#update'
    delete '/mirkwood/:id'   => 'mirkwood#destroy'

    get    '/mordor'         => 'mordor#index'
    post   '/mordor'         => 'mordor#create'
    get    '/mordor/:id'     => 'mordor#show'
    patch  '/mordor/:id'     => 'mordor#update'
    delete '/mordor/:id'     => 'mordor#destroy'

    get    '/rivendell'      => 'rivendell#index'
    post   '/rivendell'      => 'rivendell#create'
    get    '/rivendell/:id'  => 'rivendell#show'
    patch  '/rivendell/:id'  => 'rivendell#update'
    delete '/rivendell/:id'  => 'rivendell#destroy'

    get    '/rohan'          => 'rohan#index'
    post   '/rohan'          => 'rohan#create'
    get    '/rohan/:id'      => 'rohan#show'
    patch  '/rohan/:id'      => 'rohan#update'
    delete '/rohan/:id'      => 'rohan#destroy'

    get    '/shire'          => 'shire#index'
    post   '/shire'          => 'shire#create'
    get    '/shire/:id'      => 'shire#show'
    patch  '/shire/:id'      => 'shire#update'
    delete '/shire/:id'      => 'shire#destroy'
  end
end
