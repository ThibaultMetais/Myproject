class Company < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :users, dependent: :destroy
  #The class is automatically mapped to the database table companies
  validates :name, :description, presence: true
end
