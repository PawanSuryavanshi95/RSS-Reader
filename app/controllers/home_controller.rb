require 'rss'

class HomeController < ApplicationController

    $url = ""
    
  def index

  end

  def post

    $url = params[:input_url]

    redirect_to '/home/rss'

  end

  def rss

    @data = $url

    @array = []

    @error = false

    begin
        rss = RSS::Parser.parse($url, false)
        rss.items.each do |item|
            puts "#{item}"
            @array = @array.push({"title" => item.title, "description" => item.description, "link" => item.link, "date" => item.pubDate})
        end
    rescue => e
        @error = true
    end

  end
end
