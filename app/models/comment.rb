class Comment < ApplicationRecord
  belongs_to :brands, optional: true
end
