class HomeController < ApplicationController
  def index
    @fave = Favtweet.new
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'L4T4aeAjSGPdpZcfaf'
      config.consumer_secret     = 'VRZK4RAz9z6n5awvTyfsafLzmNGo4BbWKUoKqqX'
      config.access_token        = '3142978772-AfsnmJCP7HpIyh6HNk8IhnEAym6cSXk'
      config.access_token_secret = 'OK9h4NtxSvLtlcsdflKbAsuBrRtwm1z'
    end
    if params[:search]
      @twitts = client.search("#{params[:search]} -rtfilter%3Alinks&include_entities=1",lang: "en", result_type: params[:result] ).take(params[:number].to_i).collect
  else
    @twitts = client.search("#dog -rtfilter%3Alinks&include_entities=1", result_type: "recent", lang: "en" ).take(8).collect

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
