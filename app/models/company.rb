class Company < ActiveRecord::Base
  has_many :memberships
  has_many :users, :through => :memberships, dependent: :destroy
  
end
