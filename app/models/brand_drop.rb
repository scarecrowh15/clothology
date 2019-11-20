class BrandDrop < ApplicationRecord
  belongs_to :brands, optional: true
  has_many :comments
  mount_uploader :article_image1, Articleimage1Uploader
  mount_uploader :article_image2, Articleimage2Uploader
  mount_uploader :article_image3, Articleimage3Uploader


  enum product_types:
  {
    fashion: 'Fashion',
    footwear: 'Footware'
  }

  validates :product_type, presence: true
  validates :article_image1, presence: true
end
