class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :colour1, :colour2
  has_one :sport
end
