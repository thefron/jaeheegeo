# JaeheeGeo

This gem contains a simple sinatra-based web application for MaxMind's
GeoIP service lookup.

## Installation

First, install jaeheego.

    $ gem install jaeheegeo

Then run the command below to install geoip data:

    $ sudo install_geoip

## Usage

To run the application, just run:

    $ jaeheegeo start

It will run the sinatra application on thin. So you can provide
additional parameters like `-p` or `-d`. Default port is 4009.

While the application is running, try these:

    $ curl http://localhost:4009/geoip/220.93.126.147
    $ curl http://localhost:4009/geoip/klassmate.com

The output is like this:

    {"country":"US","county":"CA","city":"San Francisco","lat":37.769699,"lng":-122.393303,"version":"GeoIP City Edition"}

JSONP is also supported for cross domain request. Just pass `callback`
parameter additionally.
