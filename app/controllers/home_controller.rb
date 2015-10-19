class HomeController < ApplicationController
	def homepage
		@user = current_user.email
		if params.key?(:search)
            @searching = true
			@query = params[:search]
            
            # @tweets = $twitter.search(@query, :count => 10, :result_type => "recent")
        end
	end

end
