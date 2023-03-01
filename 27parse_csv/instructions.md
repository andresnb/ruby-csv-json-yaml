# CSV Parser

Complete the module `MoviesCsvParser` to transform a CSV file into a useful ruby
hash and vice-versa.

- `parse_csv_movies` This method receives a filename (a file with a csv
  extension is expected) and transforms each line into an array resulting in an
  Array of arrays.

Notice the second column (`genre`), it contains a string of multiple values
separated by a ", ". Your resulting array should have an Array of genres.

Another one, the `gross` column has a string with the dollar sign ($) and an M
at the end. You should only keep the number in your hash.

As a result, this line for example:

```plain
The Dark Knight (2008),"Action, Crime, Drama",$534.86M
```

Should be converted to something like:

```ruby
{ "title" => "The Dark Knight (2008)", "genre" => ["Action", "Crime", "Drama"], "gross" => 534.86 }
```

- `export_csv` This method receives a movies hash and a destination filename. It
  makes exactly the opposite of the previous method. It should join the genres
  on a single string and add the $ sign and the M for the gross value. The
  result should be stored using the CSV format on the destination file.
