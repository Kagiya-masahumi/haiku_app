class CreateHaikus < ActiveRecord::Migration[6.0]
  def change
    create_table :haikus do |t|
      t.string :kami, null: false
      t.string :naka, null: false
      t.string :shimo, null: false
      t.references :user, foreign_key: true
      t.integer :season_id, null: false
      t.timestamps
    end
  end
end
