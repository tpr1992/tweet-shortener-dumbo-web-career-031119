# Write your code here.
def dictionary
  new_words = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "For" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  tweet.collect do |word|
    dictionary.collect do |key, value|
      if key == word
        word.replace(value)
      end
    end
  end
  tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
  puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
else
  tweet
end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    "#{selective_tweet_shortener(tweet)[0..136]}..."
  else
    tweet
  end
end
