class AddProjectToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :project, index: true
    add_foreign_key :comments, :projects
  end
end
