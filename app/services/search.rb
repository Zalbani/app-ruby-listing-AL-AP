class Search

  def initialize(query)
    @query = query
  end

  def perform
    (@query != '') ?
        out = Annonce.where(['annonces.title LIKE ?',
                             "%#{@query}%"
                            ]) :
        out = Annonce.all

    return out
  end

end