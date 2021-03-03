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
  end
end
