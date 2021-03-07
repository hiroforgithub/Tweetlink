class UsersController < ApplicationController
  def index
    @user = User.new
    def user
      require "twitter"
      
      client = Twitter::REST::Client.new do |config|
        config.consumer_key = ENV['CONSUMER_KEY']
        config.consumer_secret = ENV['CONSUMER_SECRET_KEY']
        config.access_token = ENV['ACCESS_TOKEN']
        config.access_token_secret = ENV['ACCESS_SECRET_TOKEN']
        @user = User.new(name: client.user.name)
      end
      return client
    end
  end
end  