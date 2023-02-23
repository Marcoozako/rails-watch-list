class Movie < ApplicationRecord
  has_many :bookmarks
  # dependent: :destroy
  has_many :lists, through: :bookmark

  validates :title, presence: true
  validates :overview, presence: true
  validates :title, uniqueness: true
end
