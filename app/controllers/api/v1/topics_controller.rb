module Api 
  module V1
    class TopicsController < ApplicationController
      skip_before_action :authenticate

      def index
        render json: Topic.all
      end

      def show 
        render json: Topic.find_by(id: params[:id]), serializer: TopicShowSerializer
      end

    end
  end
end