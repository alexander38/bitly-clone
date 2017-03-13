#this is the controller file
get '/' do
  @urls = Url.all
  erb :"static/index"
end

post '/urls' do

	url = Url.create(long_url: params[:long_url])
	redirect "/"
end

get '/:short_url' do
	@url = Url.find_by(short_url: params[:short_url])
	unless @url.nil?
		@url.counter +=1
		@url.save
		redirect @url.long_url
	else
		redirect "/"
	end
end
