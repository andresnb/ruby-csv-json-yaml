# Movies

This class follows 'closely' the basic operations of a CRUD application (Create,
Read, Update and Delete). It uses a JSON file as the Data Store and keeps that
file updated all the time.

When initialized, a store file is given representing the filename of a JSON
file. The `@id` instance variable should be used to keep track of the id count
so every movie has a unique id.

About the methods:

- `all`: This should read the JSON file, parse the information and return an
  Array of hashes.
- `find`: This one receives an id. First, the method reads all the data from the
  JSON file (you can use the method `all` for this), and then it tries to find
  the movie hash that contains the given ID. If it is found, is returned if not
  nil is returned.
- `create`: This method receives a movie (formatted as a hash). It adds to the
  movie hash a new id with the next available id number. Then, it reads all the
  movies (you can use the method `all`), pushes the new movie to the movies
  array, and stores the result on the JSON store file (overriding the previous
  one). This method should return the created movie hash (containing the
  generated ID).
- `delete`: This method receives an ID. First, it reads `all` the data from the
  JSON file. Then creates a new array filtering or selecting all the movie
  hashes that have a different ID number. Finally, the new array is stored on
  the JSON file.
- `update`: This method receives an ID and a hash named `new_data`. The new_data
  could have one or more keys. It is up to the user which keys they want to
  change. So first, the method `find` the hash using the given ID. Then, it
  merges that hash with the received new_data. Then it `delete` the movie hash
  from the JSON file. Finally, it reads the json file, pushes the modified movie
  to the array, and stores the result back on the JSON file. This method should
  return the updated movie hash.
- `delete_all`: This just stores an empty array ([]) on the JSON store file.
- `import_csv`: This method receives a filename (a file with a CSV extension is
  expected). Then, it reads the CSV file and for each row, it `create` a new
  hash movie (remember, the create method take care of adding the IDs)
