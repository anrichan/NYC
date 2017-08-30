class AddAttachmentMyphotoToAdminprofiles < ActiveRecord::Migration
  def self.up
    change_table :adminprofiles do |t|
      t.attachment :myphoto
    end
  end

  def self.down
    remove_attachment :adminprofiles, :myphoto
  end
end
