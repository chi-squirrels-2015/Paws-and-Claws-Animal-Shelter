class CreateAdopters < ActiveRecord::Migration
  def change
    create_table :adopters do |t|
      t.string :email, uniqueness: true
      t.string :password_hash

      t.timestamps
    end
  end
end
