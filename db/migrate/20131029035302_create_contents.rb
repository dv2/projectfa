class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
