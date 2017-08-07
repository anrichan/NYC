class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_title
      t.text :comment_discription
      t.integer :user_id
      t.integer :articlcl_id

      t.timestamps
    end
  end
end
