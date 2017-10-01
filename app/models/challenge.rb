class Challenge < ApplicationRecord
  belongs_to :user
  has_many :calendar
  has_many :diaries
end
