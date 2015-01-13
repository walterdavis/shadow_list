class Asset < ActiveRecord::Base
  belongs_to :project
  has_many :assignments
  has_many :users, :through => :assignments
end
