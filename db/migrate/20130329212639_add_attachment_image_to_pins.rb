class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image
      #this is for upload via URL with paperclip
      add_column :photos, :image_remote_url, :string 
      #end of it
    end
  end

  def self.down
    drop_attached_file :pins, :image
  end
end
