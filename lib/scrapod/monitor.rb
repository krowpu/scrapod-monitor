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
      erb :index, locals: { sessions: sessions }
    end

    def redis
      @redis ||= Redis.new
    end

    def sessions
      redis.smembers('sessions').map do |session_id|
        {
          id: session_id,
          started_at: redis.get("session:#{session_id}:started_at"),
        }
      end
    end
  end
end
