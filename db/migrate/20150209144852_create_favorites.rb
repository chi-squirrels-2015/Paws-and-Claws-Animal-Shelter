class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :adopter
      t.references :animal
    end
  end
end
