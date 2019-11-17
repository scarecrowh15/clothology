class Brand < ApplicationRecord
    mount_uploader :image, ImageUploader
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
    validates :image, presence: true
    validates :product_name, presence: true
    validates :article_title, presence: true
    validates :article_overview, presence: true
    # validate :valid_product_type?, if: proc { |model| model.product_type_enum.presence }

    # def valid_product_type?
    #   i
    #       errors.add(:product_type, "false")
    # end
  
end
