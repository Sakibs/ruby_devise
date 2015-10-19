class SayController < ApplicationController
  def hello
  	# @tweets = $twitter.search("ruby", :count => 10, :result_type => "recent")
  end

  def goodbye
  	@time = Time.now
  end
end
