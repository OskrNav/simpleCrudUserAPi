class API::V1::UserSerializer < ActiveModel::Serializer
  attributes :id , :email , :name , :created_at

  def created_at
    object.created_at.strftime "%Y-%m-%d"
    end
end
