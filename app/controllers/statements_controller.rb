class StatementsController < ApplicationController

    http_basic_authenticate_with name: "admin", password: "admin", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @statement = @article.statements.create(statement_params)
        redirect_to article_path(@article)
      end


      def destroy
        @article = Article.find(params[:article_id])
        @statement = @article.statements.find(params[:id])
        @statement.destroy
        redirect_to article_path(@article)
      end


      private
      def statement_params
        params.require(:statement).permit(:commenter, :body)
      end

end
