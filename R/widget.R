library(shiny)
library(leaflet)
library(tidyverse)
library(tidyquant)
library(dygraphs)
library(alphavantager)
library(xts)
library(htmlwidgets)
AAPL <- tq_get("AAPL", get = "stock.prices")
av_api_key("81J0XGEKMFFDRWUM")

MSFT <- av_get(symbol = "MSFT", av_fun = "TIME_SERIES_INTRADAY", interval = "15min")

MSFT <- MSFT[, c("timestamp","close")]
MSFT <- xts(MSFT, order.by = MSFT$timestamp)
saveWidget(dygraph(MSFT, main = "Microsoft Stock Data"),'msft')
