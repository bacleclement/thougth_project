class Profil < ApplicationRecord
  belongs_to :user
  has_many :mood_checks
end
