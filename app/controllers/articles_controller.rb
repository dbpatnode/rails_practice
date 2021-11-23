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

    def new
        # instantiates an article: this is very important for validation.
        @article = Article.new
    end

    def create
        # use this line to check params after form has been submitted(from articles/new.html.erb):
        # render plain: params[:article]

        # this wont work because we need STRONG PARAMS:
        # @article = Article.new(title: params[:article].title, description: params[:article].description)

        # with strong params instead:
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save

            # confirmation message:
            # to display the flash[:notice] alter application.html.erb view
            flash[:notice] = "Article was created successfully."

            # to redirect to the individual post page once its posted use this (rails is smart enough to grab id without specifying): 
            redirect_to @article
            # to redirect to the whole list of articles use this:
            # redirect_to '/articles'
        else
            # if the input doesnt meet the validations then re-render new.
            # new is short for new.html.erb
            render 'new'
        end
    end



end