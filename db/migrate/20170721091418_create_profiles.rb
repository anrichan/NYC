class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.text :self_introduction
      t.integer :sex_id
      t.integer :user_id

      t.timestamps
    end
  end
end
