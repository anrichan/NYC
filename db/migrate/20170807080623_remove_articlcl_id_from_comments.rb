class RemoveArticlclIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :articlcl_id, :integer
  end
end
