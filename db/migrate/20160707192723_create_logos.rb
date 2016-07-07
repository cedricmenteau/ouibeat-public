class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :name
      t.string :picture
      t.integer :position

      t.timestamps null: false
    end
  end
end
