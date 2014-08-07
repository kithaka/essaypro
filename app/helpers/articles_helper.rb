module ArticlesHelper
	def recent_posts
    #@articles = Article.all
    @articles = Article.latest
  end
end
