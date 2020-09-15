class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :actor, :team_name, :tip

end
