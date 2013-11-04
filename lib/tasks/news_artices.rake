namespace :news_articles do
  
  desc 'create news articles'
  task :create => :environment do

    uri = "http://www.thehindu.com/news/cities/Hyderabad/"
    NewsArticle.create_articles_1(uri)
  end
end
