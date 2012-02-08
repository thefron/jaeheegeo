require 'active_support/core_ext'
require 'sinatra/base'

module JaeheeGeo
  class App < ::Sinatra::Base
    get '/' do
      "Running\n"
    end

    get '/geoip/:ip' do
      content_type :json
      JaeheeGeo::Geoip.new(params[:ip]).to_json
    end
  end
end
