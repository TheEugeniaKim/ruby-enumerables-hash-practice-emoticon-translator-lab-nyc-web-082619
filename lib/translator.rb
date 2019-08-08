require "yaml"
require "pry"

def load_library(emoticons)
  emoticons_hash = {"get_meaning" =>{}, "get_emoticon" =>{}}
  emoticons = YAML.load_file('lib/emoticons.yml').each do |emotion, emoji|
    emoticons_hash["get_meaning"][emoji[1]] = emotion
    emoticons_hash["get_emoticon"][emoji[0]] = emoji[1]
  end
  emoticons_hash
end


def get_japanese_emoticon(lib/emoticons.yml, emoticon)
  library = def load_library(lib/emoticons.yml)
    if library
      return library["get_japanese_emoticon"]
    end
    "Sorry, that emoticon was not found"
  end



def get_english_meaning
  
  
end



