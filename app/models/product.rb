class Product < ApplicationRecord

  validates :name, presence: true
  belongs_to :company, optional: true

end
