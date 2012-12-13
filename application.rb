class Application < Sinatra::Base
  # HTML5 doctype and sane attribute wrappers
  set :haml, format: :html5, attr_wrapper: '"'

  # http://ricostacruz.com/sinatra-assetpack/
  register Sinatra::AssetPack

  configure :production, :development do
    # Until this becomes a priority or easy to implement
    # cleanly, we'll disable logging. See
    # https://github.com/sinatra/sinatra/issues/484
    disable :logging
  end

  assets do
    # Assets from the path /app/assetType will be
    # served from the URI /assets/assetType
    serve "/assets/js",  from: "/app/javascripts"
    serve "/assets/css", from: "/app/stylesheets"

    js :application,  [
      "/assets/js/lib/*",
      "/assets/js/*"
    ]
    css :application, [
      "/assets/css/lib/*",
      "/assets/css/*"
    ]
  end

  get "/" do
    haml :index
  end

  not_found do
    haml :'404'
  end

  error do
    haml :'500'
  end
end
