class CreateIndiaStates < ActiveRecord::Migration
  def change
    create_table :india_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
