module Api 
  module V1
    class LinksController < ApplicationController
  
      def index
        render json: Link.all
      end

      def show
        @link = Link.find_by(id: params[:id])
        render json: @link.to_json( :include => [:comments] )
      end

    end
  end
end