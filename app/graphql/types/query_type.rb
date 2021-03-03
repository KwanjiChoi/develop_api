module Types
  class QueryType < Types::BaseObject
    field :posts, [Types::PostType], null: false
    def posts
      Post.all
    end


    field :post, Types::PostType, null: false do
      description 'gets post informations'
      argument :id, Int, required: false, description: 'post id'
    end
    def post(id:)
      Post.find(id)
    end

    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      description 'gets user informations'
      argument :id, Int, required: false, description: 'user id'
    end
    def user(id:)
      User.find(id)
    end

  end
end
