require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  @files = Dire.glob("public/*").map { |file| File.basename(file) }.sort
  @files.reverse! if params[:sort] == "desc"
  erb :list
end