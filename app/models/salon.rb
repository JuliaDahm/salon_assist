class Salon < ActiveRecord::Base
  has_many :products
  has_many :services 
  belongs_to :employees 
end
