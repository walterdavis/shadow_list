class User < ActiveRecord::Base
  has_many :projects
  has_many :assignments
  has_many :projects, through: :assignments
  has_many :comments
  has_many :assets, :through => :comments
  has_many :projects, :through => :assets
end
