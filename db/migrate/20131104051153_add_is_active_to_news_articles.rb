class AddIsActiveToNewsArticles < ActiveRecord::Migration
  def change
    add_column :news_articles, :is_active, :boolean, default: false
  end
end
