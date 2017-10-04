class HomeController < ApplicationController
  def index
    hashtag = ["love", 'cat', 'dog', 'kiss', 'flower', 'vancouver', 'hiking']
    @fave = Favtweet.new
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'fafaf'
      config.consumer_secret     = 'VRZK4RAz9z6n5awvJPoDia4tMLzmNGo4BbWKUoKqqX'
      config.access_token        = '314297qYL9knmJCP7HpIyh6HNk8IhnEAym6cSXk'
      config.access_token_secret = 'OK9h4NtxSvLtlcUW4Fw0AmeSpWlKbAsuBrRtwm1z'
    end
    if params[:search]
      @twitts = client.search("#{params[:search]} -rtfilter%3Alinks&include_entities=1",lang: "en", result_type: params[:result] ).take(params[:number].to_i).collect
  else
    @twitts = client.search("# #{hashtag.sample} -rtfilter%3Alinks&include_entities=1", result_type: "recent", lang: "en" ).take(8).collect

  end

  end

  def media
    extended_entities = entities(MediaFactory, :media, :extended_entities)
    extended_entities.empty? ? entities(MediaFactory, :media) : extended_entities
  end

  def entities?
  !@attrs[:entities].nil? && @attrs[:entities].any? { |_, array| array.any? }
end
end
