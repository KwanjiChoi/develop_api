Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  namespace 'restful' do
    namespace 'v1' do
      resources :posts
    end
  end
end
