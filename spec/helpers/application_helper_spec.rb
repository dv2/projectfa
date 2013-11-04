require 'spec_helper'

describe ApplicationHelper do
  
  describe '.show_news_articles?' do
    it "returns false when there are no news_articles" do
      NewsArticle.delete_all
      expect(show_news_articles?).to eq false
    end

    it "returns false when there are no active news_articles" do
      news_article = FactoryGirl.create(:news_article)
      expect(show_news_articles?).to eq false
    end

    it "returns true when there are active news_articles" do
      news_article = FactoryGirl.create(:news_article, is_active: true)
      expect(show_news_articles?).to eq true
    end
  end
end