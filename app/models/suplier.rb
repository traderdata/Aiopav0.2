class Suplier < ActiveRecord::Base
  has_many :suplier_marketplaces
  has_many :marketplaces, through: :suplier_marketplaces

  has_many :users

  validates :name, :presence => true,
            :length => { :minimum => 3, :maximum => 20 },
            :uniqueness => true

end
