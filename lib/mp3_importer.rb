# require 'pry'
#
# class MP3Importer
#   attr_accessor :path
#
#   def initialize(path)
#     @path = path
#     # @files = []
#   end
#
#   def files
#     # binding.pry
#     list = Dir["#{path}/*.mp3"]
#     list.map do |long_path|
#       long_path.slice!("#{path}/")
#       long_path
#     end
#   end
#
#   def import
#     # binding.pry
#     files.each do |file|
#       Song.new_by_filename(file)
#     end
#   end
# end

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
