# JSON Parser

The objective here is similar to the CSV Parser but easier 🙂 JSON is more
flexible and, for example, if a movie has multiple genres JSON would use an
Array directly. It is not very common to send "formatted" numbers like "$23.60M"
using JSON, so we will use the number directly here. In other words, no manual
transformation is needed.

- `parse_movies(filename)` This method receives a filename (a file with a json
  extension is expected) and returns an array of hashes.
- `export_json(movies, filename)` This method receives an array of hashes and a
  destination filename. It transforms this array of hashes into JSON notation
  and stores the result in the denominated filename.
