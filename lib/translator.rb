require 'yaml'

def load_library(path)
  result = {'get_meaning' => {}, 'get_emoticon' => {}}
  emoticons = YAML.load_file(path)
  emoticons.each do |key, values|
    result['get_emoticon'][values[0]] = values[1]
    result['get_meaning'][values[1]] = key
  end
  result
end

def get_japanese_emoticon(path, emote)
  lib = load_library(path)
  lib['get_emoticon'][emote] || 'Sorry, that emoticon was not found'
end

def get_english_meaning(path, emote)
  lib = load_library(path)
  lib['get_meaning'][emote] || 'Sorry, that emoticon was not found'
end
