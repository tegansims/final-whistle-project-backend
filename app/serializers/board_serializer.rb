class BoardSerializer < ActiveModel::Serializer
  attributes :id, :coordinates, :name, :team_id
end
