module Queries
  class Post < BaseQuery
    type ObjectTypes::PostType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Post.find(id)
    end
  end

end