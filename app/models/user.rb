class User < ActiveRecord::Base
  has_many :projects
  has_many :assignments
  has_many :projects, through: :assignments
end
