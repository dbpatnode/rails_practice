class ArticlesController < ApplicationController


    def show
        # having an instance variable makes it available in in the view
        # params is how you grab ids and such
        @article = Article.find(params[:id])
    end

    def index 
        # grabs all of the articles
        @articles = Article.all
    end

end