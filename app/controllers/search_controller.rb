class SearchController < ApplicationController
    def index
        @query = Friend.ransack(params[:q])
        @friend = @query.result(distinct: true)
    end
end
