module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: true
    field :result, Boolean, null: true

    argument :name, String, required: false
    argument :email, String, required: false

    def resolve(**args)
      user = User.create(name: args[:name], email: args[:email])
      {
        user: user,
        result: user.errors.blank?
      }
    end
  end
end
