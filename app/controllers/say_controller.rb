class SayController < ApplicationController
  def hello
  	@tweets = $twitter.search("#google", result_type: "recent", count: 20)
  end

  def goodbye
  	@time = Time.now	
  end
end
