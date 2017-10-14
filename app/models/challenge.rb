class Challenge < ApplicationRecord
  belongs_to :user
  has_many :diaries, foreign_key: 'challenge_id', class_name: 'Diary', dependent: :destroy
end
