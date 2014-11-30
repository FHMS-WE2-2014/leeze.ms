class Tour < ActiveRecord::Base
  has_many :tour_categories
  has_many :categories, through: :tour_categories

  validates :title, :teaser, :description, :categories, presence: true
  validates :url, format: %r|\Ahttp(s?)://www.google.com/maps|
end
