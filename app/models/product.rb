class Product < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates :title, presence: true
  validates :price, presence: true, numericality: true
  validates_attachment_presence :photo
end
