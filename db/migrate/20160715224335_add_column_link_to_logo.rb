class AddColumnLinkToLogo < ActiveRecord::Migration
  def change
     add_column :logos, :link, :string
  end
end
