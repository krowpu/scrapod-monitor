# frozen_string_literal: true

require 'sinatra'

module Scrapod
  ##
  # Scrapod monitoring dashboard.
  #
  class Monitor < Sinatra::Base
    get '/' do
      'Hello, World!'
    end
  end
end
