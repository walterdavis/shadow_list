class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :asset
  belongs_to :project
  before_save :link_to_project
  
  private
  def link_to_project
    self.project = asset.project
  end
end
