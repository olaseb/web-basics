get '/' do
	@albums = Album.all

  erb :index
end

get '/new' do
  erb :form
end

post '/' do

	# On peut aussi faire : Album.new(params) Remplace ligne 12 à 22

	@name = params[:name]
	@artist = params[:artist]
	@year = params[:year]

  
	album = Album.new({
		name: @name,
		artist: @artist,
		year: @year
	})

	album.save

  @albums = Album.all

  erb :index
end

get '/:id' do
	id = params[:id].to_i

	@album = Album.find(id)
  # Find the album with index :id and transmit it to the show view
  erb :show
end
