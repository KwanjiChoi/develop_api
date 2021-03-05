module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false
    field :user, UserType, null: false
    field :title, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
