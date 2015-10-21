class HomeController < ApplicationController
	def homepage
		@user = current_user.email
		if params.key?(:search)
            @searching = true
			@query = params[:search].to_s() + ' -rt' # omit retweets

            @tweets = $twitter.search(@query, result_type: "recent", count: 20)
        end
	end

end
