class NewsArticle < ActiveRecord::Base

  scope :active, -> { where(is_active: true) }

  def self.create_articles_1(uri = nil)
    uri = "http://www.thehindu.com/news/cities/Hyderabad/" if uri.nil?

    agent = Mechanize.new
    page = agent.get uri
    doc = Nokogiri::HTML.parse(page.body)

    news_articles = []

    doc.search('.sub-headlines .sub-headline').each do |item|

      if item.at('h2')
        url = item.at('h2').children[1].attributes['href'].value
        title = item.at('h2').children[1].content.strip
        article = NewsArticle.create(title: title, url: url)
      end

      if item.at('h3')
        url = item.at('h3').children[1].attributes['href'].value
        title = item.at('h3').children[1].content.strip
        article = NewsArticle.create(title: title, url: url)
      end

    end
  end
end
