# frozen_string_literal: true

require 'sinatra'

module Scrapod
  class Monitor < Sinatra::Base
    module Version
      VERSION = '0.0.0'
    end
  end
end
