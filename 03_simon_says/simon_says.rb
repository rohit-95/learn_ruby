def echo(text)
  text
end
def shout(text)
  text.upcase!
end
def repeat(text, num_1=2)
  ans = text
  while num_1>1
    ans = ans + ' ' + text
    num_1 = num_1 - 1
  end
  ans
end
def start_of_word(text, num_1)
  i = 0
  ans = ""
  while i<num_1
    ans = ans + text[i]
    i += 1
  end
  ans
end
def first_word(text)
  i = 0
  ans = ""
  while text[i]!=" "
    ans = ans + text[i]
    i += 1
  end
  ans
end
def titleize(text)
  array = text.split
  i = 0
  ans = ""
  while i<array.size-1
    if((array[i].length >2 && array[i] != "and" && array[i] != "the" && array[i] != "over") || (i == 0))
      ans += array[i].capitalize! + " "
    else
      ans += array[i] + " "
    end
    i += 1
  end
  if((array[i].length >2 && array[i] != "and" && array[i] != "the" && array[i] != "over") || (i == 0))
    ans += array[i].capitalize!
  else
    ans += array[i]
  end
  ans
end
