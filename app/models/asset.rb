class Asset < ActiveRecord::Base
  belongs_to :project
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :comments
  has_many :users, :through => :comments
end
