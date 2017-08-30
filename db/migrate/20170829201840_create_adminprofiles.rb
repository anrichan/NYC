class CreateAdminprofiles < ActiveRecord::Migration[5.0]
  def change
    create_table :adminprofiles do |t|
      t.string :admin_name
      t.text :admin_self_introduction
      t.text :like_location
      t.integer :admin_id

      t.timestamps
    end
  end
end
