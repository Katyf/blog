class CategoriesController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @category = @article.category.create(category_params)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @category = @article.categories.find(params[:id])
    @category.destroy
    redirect_to article_path(@article)
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
