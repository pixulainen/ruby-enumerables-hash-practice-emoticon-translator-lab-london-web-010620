# require modules here
require 'yaml'
require 'pp'

def load_library(file_path)
 library = YAML.load_file(file_path)
 library
 result = {"get_meaning" => {},"get_emoticon" => {}}
  library.each do |meaning,emoticon|
    result["get_meaning"][emoticon[1]] = meaning
    result["get_emoticon"][emoticon[0]] = emoticon[1]
   end
   result
end

def get_japanese_emoticon(path,emoticon)
library = load_library(path)
  if library["get_emoticon"].include?(emoticon)
    return library["get_emoticon"][emoticon]
  else
    return "Unknown Emoticon"
end
end


def get_english_meaning
  # code goes here
end