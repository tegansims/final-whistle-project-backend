class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :colour1, :colour2
  has_one :sport
  # has_many :boards
end
