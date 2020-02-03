require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  extend Memorable::ClassMethods, Findable #*
  
  include Memorable::InstanceMethods, Paramable

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
