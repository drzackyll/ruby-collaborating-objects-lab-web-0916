# require 'pry'
# class Song
#    attr_accessor :name, :artist
#    #attr_reader :artist_name
#
#    def initialize(name)
#      @name = name
#    end
#
#    def self.new_by_filename(file_name)
#     #  binding.pry
#      parsed = file_name.split(" - ")
#     #  art = Artist.find_or_create_by_name(parsed[0])
#      new_song = self.new(parsed[1])
#      new_song.artist_name = parsed[0]
#     #  new_song.artist.add_song(new_song)
#      new_song
#    end
#
#    def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end
# end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
