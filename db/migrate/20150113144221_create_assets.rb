class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :project, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :assets, :projects
  end
end
