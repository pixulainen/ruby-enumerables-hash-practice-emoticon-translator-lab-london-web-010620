# require modules here
require 'yaml'
require 'pp'

def load_library(file_path)
  # code goes here	  library = YAML.load_file(file_path)
 result = {"get_meaning" => {},"get_emoticon" => {}}
  path.each do |meaning,emoticon|
    result["get_meaning"][emoticon[1]] = meaning
    result["get_emoticon"][emoticon[0]] =emoticon[1]
    end
    result
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end