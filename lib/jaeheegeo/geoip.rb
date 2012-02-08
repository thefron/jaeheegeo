require 'geoip'

class JaeheeGeo::Geoip < ::Autometal::Geoip
  def as_json(options = {})
    {
      :country => self.country,
      :county => self.county,
      :city => self.city,
      :lat => self.lat,
      :lng => self.lng,
      :version => self.version
    }.as_json(options)
  end
end
