class Product < ActiveRecord::Base
  belongs_to :page
  has_many :orders
end
