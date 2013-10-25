class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :pick
      t.string :gender
      t.integer :year_of_birth
      t.string :country
      t.string :india_state
      t.string :ap_district

      t.timestamps
    end
  end
end
