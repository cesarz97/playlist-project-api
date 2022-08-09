class PlaylistController < ApplicationController
	def new
		@playlist = Playlist.new
	end
	def index
    	@playlists = Playlist.all
  	end
	def create
    	@playlist = Playlist.new(playlist_params)
 
    	@playlist.save
    	redirect_to @playlist
  	end
 
	private

	def playlist_params
    	params.require(:playlist).permit(:title, :song_link)
  	end
    def show
    	@playlist = Playlist.find(params[:id])
  	end

    

    def edit
    	@playlist = Playlist.find(params[:id])
    end

    def update
 		@playlist = Playlist.find(params[:id])
 
  		if @playlist.update(playlist_params)
    		redirect_to @playlist
  		else
    		render 'edit'
  		end
	
	end
	  def destroy
    		@playlist = Playlist.find(params[:id])
    		@playlist.destroy
   
  		    redirect_to playlist_index_path
  		end
end
