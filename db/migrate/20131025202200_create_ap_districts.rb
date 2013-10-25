class CreateApDistricts < ActiveRecord::Migration
  def change
    create_table :ap_districts do |t|
      t.string :name

      t.timestamps
    end
  end
end
