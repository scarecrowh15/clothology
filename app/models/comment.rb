class Comment < ApplicationRecord
  belongs_to :brands, optional: true
  belongs_to :brand_drops, optional: true
end
