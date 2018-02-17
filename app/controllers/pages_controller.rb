class PagesController < ApplicationController
  def home
    @response = HTTParty.get('https://www.alphavantage.co/query?function=TIME_SERIES_DAILY_ADJUSTED&symbol=MSFT&apikey=demo')
  end
end
