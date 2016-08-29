class RenameModelProjectDetailsToDetails < ActiveRecord::Migration
  def self.up
    rename_table :project_details, :details
  end

  def self.down
    rename_table :details, :project_details
  end
end
