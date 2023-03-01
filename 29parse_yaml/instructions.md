# YAML Parser

Same as the previous two but with YAML, as you noticed it is more flexible and,
avoids the common issues encountered in the previous ones. Same as with JSON it
is not very common to send "formatted" numbers.

- `parse_movies(filename)` This method receives a filename (a file with a yaml
  extension is expected) and returns an array of hashes.
- `export_yaml(movies, filename)` This method receives an array of hashes and a
  destination filename. It transforms the array of hashes into YAML notation and
  stores the result in the denominated filename.
