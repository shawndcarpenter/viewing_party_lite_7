class MovieCastFacade
  def initialize(movie_id)
    @movie_id = movie_id
  end

  def movie_cast
    service = MovieService.new

    json = service.movie_cast(@movie_id)
    @actor_data = json[:cast].map do |actor_data|
      MovieActor.new(actor_data)
    end
  end
end