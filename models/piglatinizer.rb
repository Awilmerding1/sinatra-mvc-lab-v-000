class PigLatinizer
  
  attr_reader :text
  

  def piglatinize(text)
    array = text.split
    array.map do |word|
      if word.match(/^[aeiou]/) != nil
        word << "way"
      elsif word.match(/^[a-z][aeiou]/) != nil
          sliced = word.slice!(0)
          word << "#{sliced}ay"
      elsif word.match(/^[a-z][a-z][aeiou]/) != nil
          sliced = word.slice!(0,2)
          word << "#{sliced}ay"
      elsif word.match(/^[a-z][a-z][a-z][aeiou]/) !=nil 
          sliced = word.slice!(0,3)
          word << "#{sliced}ay"
        elsif word.match(/^[a-z][a-z][a-z][a-z][aeiou]/) !=nil 
          sliced = word.slice!(0,4)
          word << "#{sliced}ay"
      end
    end
    array
  end

  
end