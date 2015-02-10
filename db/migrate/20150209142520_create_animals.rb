class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.boolean :adopted?, default: false
      t.integer :img_id
      t.belongs_to :shelter

      t.timestamps
    end
  end
end
