module Freegeoip
  class Response
    attr_reader :remote, :ip, :country_code, :country_name,
      :region_code, :region_name, :city, :zip,
      :time_zone, :latitude, :longitude, :metro_code

    def initialize(remote, data)
      @remote = remote
      data.each do |key, value|
        instance_variable_set "@#{key}", value
      end
      # empty hash if nil
      # free accounts don't get this data
      @time_zone = @time_zone.nil? ? {} : @time_zone
    end
  end
end
