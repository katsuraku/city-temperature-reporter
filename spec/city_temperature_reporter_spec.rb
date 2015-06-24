require './lib/city_temperature_reporter'

describe CityTemperatureReporter do


  it 'requests its current temperature' do
    # Need to test that a call to antoher object is being made
    # SETUP
    #- there needs to be a weatherman.
    weatherman = double :weatherman
    #- there needs to be a temperature reporter - put the 'let' line in above.
    new_york = CityTemperatureReporter.new('New York', weatherman)
    # EXPECTATION ABOUT THE FUTURE
    expect(weatherman).to receive(:get_temperature).with('New_York')
    # this is the way to say receive a message with 'New_York' as a parameter

    # ACTION
    new_york.request_temperature
    # think about what TemperatureReporter needs to do its job
    # How can you test that it makes this request? Use diagrams to help you visualise this
  end

  it 'reports its current temperature' do
    # once it's got that temperature, can it report it?
    #SETUP
    # - need a weatherman double
    weatherman = double :weatherman
    seoul      = CityTemperatureReporter.new('Seoul', weatherman)
    #EXPECTATION
    expect(seoul.temperature).to eq '29'
  end
end
