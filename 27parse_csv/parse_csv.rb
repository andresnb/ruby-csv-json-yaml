require "csv"

module MoviesCsvParser
  def parse_csv_movies(filename)
    movies = CSV.read(filename, headers: true)
    array_movies = []

    movies.each do |movie|
      genres_array = movie["genre"].split(", ")
      gross_str = movie["gross"]
      gross_float = gross_str[1..-2].to_f
      array_movies.push({
                          movies.headers[0] => movie[movies.headers[0]],
                          movies.headers[1] => genres_array,
                          movies.headers[2] => gross_float
                        })
    end
    array_movies
  end

  def export_csv(movies, filename)
    csv_str = "#{movies[0].keys[0]},#{movies[0].keys[1]},#{movies[0].keys[2]}\n"
    movies.each do |movie|
      genre_str = movie["genre"].length > 1 ? "\"#{movie['genre'].join(', ')}\"" : movie["genre"].join(", ")
      gross_str = "$#{format('%.2f', movie['gross'])}M"
      title_str = movie["title"]
      csv_str += "#{title_str},#{genre_str},#{gross_str}\n"
    end

    File.write(filename, csv_str)
  end
end
