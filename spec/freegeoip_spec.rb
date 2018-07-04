require "spec_helper"

describe Freegeoip do
  it "has a version number" do
    expect(Freegeoip::VERSION).not_to be nil
  end

  describe ".get" do
    it "returns a response object" do
      res = Freegeoip.get('google.com')

      expect(res).to be_kind_of(Freegeoip::Response)
    end

    it "returns the data from google.com" do
      res = Freegeoip.get('134.201.250.155')

      expect(res.ip).to_not be_empty
      expect(res.country_code).to eq "US"
      expect(res.country_name).to eq "United States"
      expect(res.region_code).to eq "CA"
      expect(res.region_name).to eq "California"
      expect(res.city).to eq "Huntington Beach"
      expect(res.zip).to eq "92648"
      # For the new API, this field is basic accounts (10 USD) onwards and it's an object
      # expect(res.time_zone).to eq "America/Los_Angeles"
      expect(res.time_zone).to be_kind_of Hash
      expect(res.latitude).to eq 33.6746
      expect(res.longitude).to eq -118.0086
    end
  end
end
