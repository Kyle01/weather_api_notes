require 'forecast_io'

ForecastIO.configure do |c|
  c.api_key = #YOUR UNIQUE KEY
end

trailStart = ForecastIO.forecast(32.589741, -116.466981)
p trailStart
