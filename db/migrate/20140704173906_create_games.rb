class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :date
      t.integer :home
      t.integer :away

      t.timestamps
    end
  end
end
