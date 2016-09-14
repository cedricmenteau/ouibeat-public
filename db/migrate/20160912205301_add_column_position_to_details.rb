class AddColumnPositionToDetails < ActiveRecord::Migration
  def change
    add_column :details, :position, :integer
  end
end
