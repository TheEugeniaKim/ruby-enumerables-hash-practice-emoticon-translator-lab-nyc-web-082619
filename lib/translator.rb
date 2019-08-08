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
  japanese_emoticon = load_library(file_path)["get_emoticon"][english_emoticon]
    if japanese_emoticon
      return japanese_emoticon
      "Sorry, that emoticon was not found"
    end
  emojis
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



