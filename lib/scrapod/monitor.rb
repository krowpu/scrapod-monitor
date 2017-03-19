# frozen_string_literal: true

require 'sinatra/base'

module Scrapod
  ##
  # Scrapod monitoring dashboard.
  #
  class Monitor < Sinatra::Base
    set :root, File.expand_path('../..', File.dirname(__FILE__))

    get '/' do
      'Hello, World!'
    end
  end
end
