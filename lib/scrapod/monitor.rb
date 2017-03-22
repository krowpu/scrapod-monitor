# frozen_string_literal: true

require 'sinatra/base'
require 'redis'

require 'scrapod/redis'

module Scrapod
  ##
  # Scrapod monitoring dashboard.
  #
  class Monitor < Sinatra::Base
    set :root, File.expand_path('../..', File.dirname(__FILE__))

    get '/' do
      erb :index, locals: { sessions: Redis::Session.all(redis) }
    end

    def redis
      @redis ||= ::Redis.new
    end
  end
end
