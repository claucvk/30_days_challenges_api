class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :id, :name, :goal, :start_day, :end_day, :status
  has_one :user
end
