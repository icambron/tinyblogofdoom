configure do
  content_dir = File.expand_path('content', File.dirname(__FILE__))
  set spandex: Spandex.new(content_dir)
end

get '/' do
  posts = settings.spandex.all_articles
  haml :index, locals: {posts: posts}
end

get '/feed.xml' do
  content_type :xml, charset: 'utf-8'
  settings.spandex.atom_feed(10, 'Tiny Blog of Doom!', 'Your name here', 'tinyblog.net', '/feed.xml')
end

get '/css/:sheet.css' do
  content_type 'text/css', charset: 'utf-8'
  scss params[:sheet].to_sym
end

get '/*' do
  post = settings.spandex.get(params[:splat][0])
  if post
    haml :page, locals: {post:  post, show_comments: true}
  else
    halt 404
  end
end
