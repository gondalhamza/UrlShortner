Rails.application.routes.draw do

  root "url_compressor#index"

  post  "/compress_url", to: "url_compressor#compress_url"
  get  "/:id", to: "url_compressor#redirect_to_base_url"

end
