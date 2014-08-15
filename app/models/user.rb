class User < ActiveRecord::Base

  belongs_to :suplier

  validates :firstname, :presence =>true,
            :length => { :minimum => 3, :maximum => 40 }

  validates :lastname, :presence =>true,
            :length => { :minimum => 3, :maximum => 40 }

  validates :email, :presence =>true,
            :uniqueness=>true

  validates_presence_of :password_confirmation, if: :password_changed?

  validates :password, :presence =>true,
            :length => { :minimum => 5, :maximum => 40 }

  validates :password,
            :confirmation =>true



end
