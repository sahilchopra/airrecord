require "json"
require "faraday"
require 'faraday/net_http_persistent'
require "time"
require "airrecord/version"
require "airrecord/client"
require "airrecord/table"

module Airrecord
  extend self
  attr_accessor :api_key, :throttle, :api_url

  Error = Class.new(StandardError)

  def throttle?
    return true if @throttle.nil?

    @throttle
  end
end
