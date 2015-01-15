class User < ActiveRecord::Base
  has_many :projects
  has_many :assignments
  has_many :assigned_projects, through: :assignments, source: :project
  has_many :comments
  has_many :commented_projects, through: :comments, source: :project
  # what I'd really like to be able to do
  # has_many :associated_projects, through: [:projects, :assignments, :comments], source: :project
  def associated_projects
    Project.includes(:assignments, :comments).where('id in (?) or id in (?) or id in (?)', project_ids, assigned_project_ids, commented_project_ids)
  end
end
