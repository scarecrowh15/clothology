class Brand < ApplicationRecord
    enum product_type:
    {
      fashion: 'Fashion',
      footwear: 'Footware'
    }

    validates :product_type, presence: true
    validate :valid_product_type?, if: proc { |model| model.product_type.presence }

    def valid_product_type?
          errors.add(:product_type, "false")
    end
  
end
