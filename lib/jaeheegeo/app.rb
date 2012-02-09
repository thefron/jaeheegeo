require 'active_support/core_ext'
require 'sinatra/base'

module JaeheeGeo
  class App < ::Sinatra::Base
    get '/' do
      "Running\n"
    end

    get '/geoip/:host' do
      callback = params.delete('callback')
      json = JaeheeGeo::Geoip.new(params[:host]).to_json
      if callback
        content_type :js
        response = "#{callback}(#{json})"
      else
        content_type :json
        response = json
      end

      response
    end
  end
end
