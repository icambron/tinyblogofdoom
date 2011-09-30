require 'sinatra'
require 'spandex'
require 'haml'
require 'date'

content_dir = File.expand_path('content', File.dirname(__FILE__))
@@spandex = Spandex.new(content_dir)

get '/' do
  posts = @@spandex.all_articles
  haml :index, :locals => {:posts => posts}
end

get '/feed.xml' do
  content_type :xml, :charset => 'utf-8'
  @@spandex.atom_feed(10, 'Tiny Blog of Doom!', 'Your name here', 'tinyblog.net', '/feed.xml')
end

get '/css/:sheet.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss params[:sheet].to_sym
end

get '*' do
  post = @@spandex.get(params[:splat][0])
  haml :page, :locals => {:post =>  post, :show_comments => true}
end
