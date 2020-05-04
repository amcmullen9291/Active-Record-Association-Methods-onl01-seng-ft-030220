class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
        self.genre.collect do |t|
      t.name
    end
  end

  def drake_made_this
    self.artist = Artist.find_or_create_by(name: "Drake")
  end
  
end