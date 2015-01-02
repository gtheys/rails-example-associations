class User < ActiveRecord::Base
  has_many :memberships
  has_many :companies, :through => :memberships, dependent: :destroy
  accepts_nested_attributes_for :memberships
  accepts_nested_attributes_for :companies
end
