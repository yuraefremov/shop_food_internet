class Dish < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ImageUploader

  validates :name, :price, :description, presence: true
end
