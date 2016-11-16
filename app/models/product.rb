class Product < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :price, numericality: { :greater_than_or_equal_to => 0.01 }
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)\z}i,
    :message => 'must be a URL for GIF, GIF or PNG image.'
  }
end
