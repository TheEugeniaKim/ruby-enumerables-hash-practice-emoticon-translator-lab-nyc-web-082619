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


def get_japanese_emoticon(file_path, english_emoticon)
  emojis = load_library(file_path)
    emojis["get_emoticon"].each do |english_emoji, japanese_emoji|
      if english_emoticon. english_emoji
        return japanese_emoji
      else 
        "Sorry, that emoticon was not found"
    end
  end
end


# def get_english_meaning(file_path, japanese_emoticon)
#   emojis = load_library
#   emojis["get_meaning"].each do |meaning, emoticon|
#     if japanese_emoticon == emoticon
#       return meaning
#       "Sorry"
#     end
#   end
  
# end



