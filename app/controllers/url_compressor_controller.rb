class UrlCompressorController < ApplicationController

  def index
  end

  def compress_url
    if  params[:url].present? && params[:url].any?
      url_array = []
      
      params[:url].each do |url|
        short_url = Shortener::ShortenedUrl.generate(url)
        
        Rails.cache.write(short_url.unique_key, url, expires_in: 43200.minutes)
        short_url.save
        
        url_array <<  request.base_url + "/" + short_url.unique_key
      end
      
      render json: {status: "ok", data: url_array }
    end
  end

  def redirect_to_base_url
    url = Rails.cache.read(params[:id])

    if url
      url = "http://#{url}" unless  url.include?("http")

      Rails.logger.info "----------------GETTING FROM CACHE---------------"
      Rails.logger.info "----------------URL: #{url} ---------------"
      Rails.logger.info "----------------/GETTING FROM CACHE---------------"

      redirect_to url
    else
      url_data = Shortener::ShortenedUrl.find_by_unique_key(params[:id])
      if url_data
        url = "http://#{url_data.url}" unless  url_data.url.include?("http")

        Rails.logger.info '--------From Query-----------'
        Rails.logger.info  url_data.url
        Rails.logger.info '---------From Query------------'

        redirect_to url
      end
    end
  end

  private
  def url_params
    params.permit(:url)
  end
end
