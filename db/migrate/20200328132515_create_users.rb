class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :hashed_password
      t.string  :date_of_birth
      t.string  :phone_number
      t.string  :last_location
      t.string  :last_participation
      t.integer :main_trait_ids, type: :array, default: []
      t.integer :secondary_traits_ids, type: :array, default: []
      t.string  :gender
      t.integer :points, default: 0
      t.text    :summary
      t.integer :xp_points, default: 0
      t.integer :amigos, default: 100
      t.integer :achievements_ids, type: :array, default: []
      t.boolean :subscription, default: false
      t.timestamps
    end
  end
end
