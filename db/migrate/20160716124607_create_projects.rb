class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :title
      t.string :sub_title
      t.text :text
      t.string :picture, array: true, default: []
      t.string :logo

      t.timestamps null: false
    end
  end
end
