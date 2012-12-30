class CreateRestoreDates < ActiveRecord::Migration
  def change
    create_table :restore_dates do |t|
      t.datetime :last_restore
      t.integer :period, default: 1

      t.timestamps
    end
  end
end
