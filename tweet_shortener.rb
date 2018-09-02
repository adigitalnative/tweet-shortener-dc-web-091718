# A method to check for capitalization would be oh-so-helpful here...
class String
  def capitalized?
    if chars.first == chars.first.upcase
      true
    else
      false
    end
  end
end

def dictionary
  { "hello" => "hi",
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

def word_substituter(tweet)
  tweet_array = tweet.split
  
  tweet_array = tweet_array.map do |word|
    if dictionary.keys.include?(word.lowercase)
      dictionary[word]
    else
      word
    end
  end
  
  tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
  true
end
