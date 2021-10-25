Rails.application.routes.draw do
  # For details on the DSL ava
  # ilable within this file, see https://guides.rubyonrails.org/routing.html
  # resources :url_compressor

  root "url_compressor#redirect_to_base_url"
  post  "/compress_url", to: "url_compressor#compress_url"
  get  "/:id", to: "url_compressor#redirect_to_base_url"

end
