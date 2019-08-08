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


def get_japanese_emoticon(file_path, emoticon)
  emoji = load_library(file_path)["get_emoticon"][emoticon]
    if emoji
      return emoji
    end
    "Sorry, that emoticon was not found"
  end
end



def get_english_meaning()

  
end



