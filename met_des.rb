
def destructible(sentence)
  new_sentence = []
  for item in 0..(sentence.length - 1)
    new_sentence[sentence.length - 1 - item] = sentence[item]
  end
  [sentence, sentence = new_sentence.join]

end

def non_destructible(sentence)
  sentence
  [sentence, sentence]
end

message = "Hablando"
p destructible(message) == ["Hablando", "odnalbaH"]
p non_destructible(message) == ["Hablando", "Hablando"]