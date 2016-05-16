class Shirt < ActiveRecord::Base
  has_many :sales, class_name: :Purchase
  has_many :purchasers, through: :sales
  belongs_to :designer, class_name: :User
end