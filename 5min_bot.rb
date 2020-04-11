require 'twitter' #twitterの読み込み

#作成したTwitterアプリにアクセスする情報を記載する
twClient = Twitter::REST::Client.new do |config|
    config.consumer_key    = ENV['MY_CONSUMER_KEY']
    config.consumer_secret = ENV['MY_CONSUMER_SECRET']
    config.access_token    = ENV['MY_ACCESS_TOKEN']
    config.access_token_secret = ENV['MY_ACCESS_TOKEN_SECRET']
end

#ツイートする文字列
twClient.update("5分おきにツイートするテスト＾＾")
