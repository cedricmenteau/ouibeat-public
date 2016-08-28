class CreateProjectDetails < ActiveRecord::Migration
  def change
    create_table :project_details do |t|
      t.string :title
      t.text :text
      t.references :project, index: true, foreign_key: true
      t.string :link

      t.timestamps null: false
    end
  end
end
