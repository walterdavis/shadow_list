class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :assignments, :users
    add_foreign_key :assignments, :projects
  end
end
