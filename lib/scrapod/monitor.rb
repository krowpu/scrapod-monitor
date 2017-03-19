# frozen_string_literal: true

require 'sinatra/base'
require 'redis'

module Scrapod
  ##
  # Scrapod monitoring dashboard.
  #
  class Monitor < Sinatra::Base
    set :root, File.expand_path('../..', File.dirname(__FILE__))

    get '/' do
      'Hello, World!'
    end

    def redis
      @redis ||= Redis.new
    end
  end
end
