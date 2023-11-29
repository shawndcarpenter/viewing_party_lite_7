class Movie
  attr_reader :title, :vote_average
  
  def initialize(movie_data)
    @title = movie_data[:original_title]
    @vote_average = movie_data[:vote_average]
  end

  # def self.movie_search(search_by_title)
  #   where('title like ?', "%#{search}%")
  # end
end