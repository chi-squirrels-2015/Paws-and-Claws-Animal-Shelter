class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.references :shelter
      t.references :adopter
      t.references :animal
    end
  end
end
