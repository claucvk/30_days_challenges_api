class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :goal, :start_day, :end_day, :status
  has_one :user
end
