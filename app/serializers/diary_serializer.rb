class DiarySerializer < ActiveModel::Serializer
  attributes :id, :day, :description, :status
  has_one :challenge
end
