class HomeController < ApplicationController
  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = '31331231dsasafasf'
      config.consumer_secret     = 'VRZK41312331312RAz9z6n5awvTyzfJKgCJPoDia4tMLzdasdasdmNGo4BbWKUoKqqX'
      config.access_token        = '3142faf1213978772-AdkoNdqYL9knmJCP7HpIyhdasdasda6HNk8IhnEAym6cSXk'
      config.access_token_secret = 'OK9hfafasf4NtxSvLtlcUW46RAurFw0AmeSpWldasdasdasKbAsuBrRtwm1z'
    end
    if params[:search]
      @twitts = client.search("#{params[:search]} -rtfilter%3Alinks&include_entities=1", result_type: "recent" ).take(8).collect
  else
    @twitts = client.search("#dog -rtfilter%3Alinks&include_entities=1", result_type: "recent" ).take(8).collect

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
