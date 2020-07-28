module Api 
  module V1
    class TopicsController < ApplicationController
      skip_before_action :authenticate

      def index
        render json: Topic.all
      end

      def show 
        render json: Link.where(topic_id: params[:id])
      end

    end
  end
end