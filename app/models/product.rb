class Product < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates :user_id, presence: true
  validates :title, presence: true
  validates :price, presence: true,
    numericality: { greater_than_or_equal_to: 0 }
  validates :stock, presence: true,
    numericality: { only_integer: true }
  validates_attachment_presence :photo
end
