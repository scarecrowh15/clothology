class Brand < ApplicationRecord
    mount_uploader :image, ImageUploader
    enum product_types:
    {
      fashion: 'Fashion',
      footwear: 'Footware'
    }

    validates :product_type, presence: true
    # validate :valid_product_type?, if: proc { |model| model.product_type_enum.presence }

    # def valid_product_type?
    #   i
    #       errors.add(:product_type, "false")
    # end
  
end
