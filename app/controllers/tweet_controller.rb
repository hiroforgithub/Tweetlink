require "twitter"
include Constants

# ENV["SSL_CERT_FILE"] = <PEM_PATH>

class TweetController < ApplicationController
  attr_reader = :client

  def index
    
  end

  def initialize()
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key == ENV["CONSUMER_KEY"]
      config.consumer_secret == ENV["CONSUMER_SECRET_KEY"]
      config.access_token == ENV["ACCESS_TOKEN"]
      config.access_token_secret == ENV["ACCESS_SECRET_TOKEN"]
    end
  end

  def twieet(str)
    @client.update(str)
  end

  # 自分のプロフィールを表示
  def show_my_profile
    puts @client.user.screen_name   # アカウントID
    puts @client.user.name          # アカウント名
    puts @client.user.description   # プロフィール
    puts @client.user.tweets_count  # ツイート数
  end

end
