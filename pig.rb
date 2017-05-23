=begin
Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word


Script: Sentence converter to Pig Latin

GET the sentence from user input
then each word is analyzed
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word 
=end

def word_to_pig(word)
  word = word.split("")
  count = []
  final = []

  if "aeiou".include? (word[0])
    final = "#{word.join("")}way"
  else
    consonant = word.each { |item| count << item if "aeiou".include? (item) }
    final << word[word.index(count[0])..(word.length - 1)] + ["ay"] + word[0..(word.index(count[0]) - 1)]
    final = final.join("")
  end
  final
end

p word_to_pig("apple")
p word_to_pig("trashar")


def sentnce_to_pig(sentence)
  sentence = sentence.split(" ")
  mensaje = []
  mensaje_final = ""

  for item in 0..(sentence.length - 1)
    word = sentence[item].split("")
    count = []
    final = []
    if "aeiou".include? (word[0])
      final = "#{word.join("")}way"
    else
      consonant = word.each { |item| count << item if "aeiou".include? (item) }
      final << word[word.index(count[0])..(word.length - 1)] + ["ay"] + word[0..(word.index(count[0]) - 1)]
      final = final.join("")
    end
    mensaje << final
  end
  for item in 0..mensaje.length - 1
    mensaje_final << mensaje[item] + " "
  end
  mensaje_final
end

p sentnce_to_pig("hola apple")

