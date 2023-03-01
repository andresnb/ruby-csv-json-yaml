require_relative "../lib/io_test_helpers"
require "minitest/autorun"
require_relative "parse_yaml"

class ParseYamlTest < Minitest::Test
  include MoviesYamlParser

  def test_parse_movies
    # skip
    yaml = "---\n- title: Some Title\n  genre:\n  - genre 1\n  - genre 2\n  gross: 23.6"
    File.open("test.yaml", "w") { |file| file.write(yaml) }

    test = parse_movies("test.yaml")

    assert_equal  ({ "title" => "Some Title", "genre" => ["genre 1", "genre 2"], "gross" => 23.6 }),
                  test[0]
  end

  def test_export_movies_to_yaml
    # skip
    movies = [
      { "title" => "New Title", "genre" => ["genre 3", "genre 4"], "gross" => 23.6 },
      { "title" => "Other Title", "genre" => ["genre 1"], "gross" => 9.6 }
    ]

    export_yaml(movies, "test.yaml")

    yaml = YAML.load(File.read("test.yaml"))

    assert_equal  "New Title", yaml[0]["title"]
    assert_equal  "Other Title", yaml[1]["title"]
    assert_equal  ["genre 3", "genre 4"], yaml[0]["genre"]
    assert_equal  ["genre 1"], yaml[1]["genre"]
    assert_equal  23.6, yaml[0]["gross"]
    assert_equal  9.6, yaml[1]["gross"]
  end
end