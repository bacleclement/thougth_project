class MoodCheck < ApplicationRecord
  belongs_to :profil
  has_many :actions
end
