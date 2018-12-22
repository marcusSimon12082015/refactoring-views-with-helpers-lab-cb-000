module ArtistsHelper
  def display_artist(song)
    @html = ""
    if song.artist.nil?
      @html = concat(render(:partial =>"artists/link", locals:{name:"Add Artist",link:edit_song_path(song)}))
    else
      @html = concat(render(:partial =>"artists/link", locals:{name:song.artist_name,link:artist_path(song.artist)}))
    end
    pry
  end
end
