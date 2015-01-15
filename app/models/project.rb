class Project < ActiveRecord::Base
  belongs_to :user
  has_many :assignments
  has_many :users, through: :assignments
  has_many :assets
  has_many :comments
  
  before_save :add_owner_to_assigned_users
  
  private
  def add_owner_to_assigned_users
    self.users += [user] if( self.users && user )
  end

end
