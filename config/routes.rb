Rails.application.routes.draw do
  namespace 'restful' do
    namespace 'v1' do
      resources :posts
    end
  end
end
