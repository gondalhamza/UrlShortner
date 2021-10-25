class UrlCompressorController < ApplicationController
  protect_from_forgery with: :null_session

  def compress_url
    if  params[:url].present? && params[:url].any?
      url_array = []
      params[:url].each do |url|
      short_url = Shortener::ShortenedUrl.generate(url)
      short_url.save
      puts "#{request.inspect}"
      url_array <<  request.base_url + "/" + short_url.unique_key
      end
      render json: {status: "ok", data: url_array }
    end


  end
  def redirect_to_base_url
    url_data = Shortener::ShortenedUrl.find_by_unique_key(params[:id])
    if url_data
      puts '--------------------'
      puts  url_data.url
      puts '---------------------'
      url = "http://#{url_data.url}" unless  url_data.url.include?("http")
      redirect_to url
    end
  end
end
