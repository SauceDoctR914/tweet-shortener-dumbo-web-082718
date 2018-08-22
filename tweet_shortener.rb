require 'pry'

def dictionary
  {"hello" => 'hi', "to" => '2', "two" => '2',  "too" => '2', "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u', 'at' => '@', 'and' => '&', "Hello" => 'Hi', "To" => '2', "Two" => '2',  "Too" => '2', "For" => '4', "Four" => '4', 'Be' => 'B', 'You' => 'U', 'At' => '@', 'And' => '&'}
end

def word_substituter(tweet)
  newArr = tweet.split(" ")
    newArr.each_with_index do |word, index|
    dictionary.each do |old, newWord|
      if word == old
        newArr[index] = newWord
  end 
end
end
newArr.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
   puts word_substituter(tweet)
 end
 end
  # Write your code here.
  
  def selective_tweet_shortener(words)
      if words.length > 140
        word_substituter(words)
      else 
         words 
      end
    end
    
def shortened_tweet_truncator(tweet)
   newTweet = selective_tweet_shortener(tweet)
   if newTweet.length > 140
   newTweet[0,136] + "..."
 end
end