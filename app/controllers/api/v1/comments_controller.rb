module Api 
  module V1
    class CommentsController < ApplicationController
      before_action :set_comment, only: [:update, :destroy]

      def index
        @comments = Comment.all
        render json: @comments
      end

      def create
        @link = Link.find_by(id: params[:link_id])
        @comment = @link.comments.new(user: current_user, body: comment_params[:body])

        if @comment.save
          render json: @comment, status: :201
        else
          render json: @comment.errors, status: 422
        end
      end

      def update
        if @comment.update(note_params)
          render json: @comment, status: 204
        else
          render json: @note.errors, status: 422
        end
      end

      def destroy
        @comment.destroy
        status: 204
      end

      private

      def comment_params
        params.require(:comment).permit(:body)
      end

      def set_comment
        @link = Link.find_by(id: params[:link_id])
        @comment = Comment.find(params[:id])
      end
    end

end