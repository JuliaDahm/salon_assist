class Salon < ActiveRecord::Base
  has_many :products
  has_many :services 
  has_many :openings 
  belongs_to :employees 
end
