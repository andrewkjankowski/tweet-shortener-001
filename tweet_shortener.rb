# Write your code here.
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
    "and" => "&"}
end

def word_substituter(tweet)
  result = tweet.split(' ')
  result.each_with_index do |word, index|
    dictionary.each do |old, substitute|
      if word.downcase == old
        result[index] = substitute
      end
    end
  end
  result.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0..136] << "..."
  else
    return tweet
  end
end