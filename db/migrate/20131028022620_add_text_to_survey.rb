class AddTextToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :text, :string
  end
end
