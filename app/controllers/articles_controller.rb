class ArticlesController < ApplicationController
    
    ############################
    # SHOW INDIVIDUAL ARTICLE: #
    ############################
    def show
        # having an instance variable makes it available in in the view
        # params is how you grab ids and such
        @article = Article.find(params[:id])
    end
    
    ######################
    # SHOW ALL ARTICLES: #
    ######################
    def index 
        # grabs all of the articles
        @articles = Article.all
    end

    #####################################
    # ADD NEW ARTICLE: (new and create) #
    #####################################
    def new
        # instantiates an article: this is very important for validation!
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

    ####################################
    # UPDATE ARTICLE: (edit and update) #
    ####################################

    def edit
        # we need to grab the specific article we want to edit by the id:
        @article = Article.find(params[:id])
    end


    def update
        # we need to grab the specific article we want to update by the id:
        @article = Article.find(params[:id])

        if @article.update(params.require(:article).permit(:title, :description))
            # confirmation message:
            # to display the flash[:notice] check out commented code in application.html.erb view.
            flash[:notice] = "Article was updated successfully."

            # to redirect to the individual post page once its posted use this (rails is smart enough to grab id without specifying): 
            redirect_to @article
            # to redirect to the whole list of articles use this:
            # redirect_to '/articles'
        else 
            # if the input doesnt meet the validations then re-render new.
            # edit is short for edit.html.erb
            render 'edit'
        end
    end
end