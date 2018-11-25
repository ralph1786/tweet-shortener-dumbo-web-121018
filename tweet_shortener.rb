def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def words_substituter(tweet)
  tweet.split.collect{ |word|
    dictionary.keys.include?(word.downcase) ? 
      word = dictionary[word.downcase] : word
  }.join(" ")
  
end


