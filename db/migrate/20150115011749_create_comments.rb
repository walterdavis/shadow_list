class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :asset, index: true
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :assets
  end
end
