class Marketplace < ActiveRecord::Base
  has_many :suplier_marketplace
  has_many :suplier, :through=> :suplier_marketplace
end
