class Product
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :price, type: Float
  field :main_image, type: String
  field :thumb_image, type: String

  embedded_in :user   # Given Parent relationship

  validates :title, :price, :description, presence: true
  validates :title, uniqueness: true
  validates :price, uniqueness: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
end
