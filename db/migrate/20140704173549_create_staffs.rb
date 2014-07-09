class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :team_id

      t.timestamps
    end
  end
end
