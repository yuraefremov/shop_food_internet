class Dish < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :category

  validates :name, :price, :description, presence: true
end
