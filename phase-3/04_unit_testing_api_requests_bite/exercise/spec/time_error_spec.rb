require "time_error"

describe TimeError do
  it "calls an API to return difference in seconds between server time and the time on this computer" do
    requester_dbl = double(:requester)
    json = %({"abbreviation":"GMT","client_ip":"82.33.115.61","datetime":"2023-01-23T15:05:41.060846+00:00","day_of_week":1,"day_of_year":23,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674486341,"utc_datetime":"2023-01-23T15:05:41.060846+00:00","utc_offset":"+00:00","week_number":4})
    url = URI("https://worldtimeapi.org/api/ip")
    expect(requester_dbl).to receive(:get).with(url).and_return(json)
    time_error = TimeError.new(requester_dbl)
    time = Time.new(2023, 1, 23, 15, 0o5, 41)
    result = time_error.error(time)
    expect(result).to eq 0.060846
  end
end
