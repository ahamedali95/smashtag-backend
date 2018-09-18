class Api::V1::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def create
    @tweet = Tweet.new(get_params)

    if @tweet.valid?
      @tweet.save
      render json: @tweet
    else
      render json: {message: "something went wrong!"}
    end
  end

  private

  def get_params
    params.require(:tweet).permit(:content);
  end
end
