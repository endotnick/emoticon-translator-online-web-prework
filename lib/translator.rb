require 'yaml'

def load_library(path)
  result = {'get_meaning' => {}, 'get_emoticon' => {}}
  emoticons = YAML.load_file(path)
  emoticons.each do |key, values|
    result['get_meaning'][values[0]] = values[1]
    result['get_emoticon'][values[1]] = key
  end
  result
end

def get_japanese_emoticon(emote)

end

def get_english_meaning(emote)

end
