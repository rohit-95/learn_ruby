def trans(text)
  vowels = ['a', 'e', 'i', 'o', 'u']
  if(vowels.include?(text[0]))
    text = text + "ay"
    text
  elsif ((['q'].include?(text[0])) && (['u'].include?(text[1])))
    l = text.length()-2
    t = text.byteslice(2,l) + text.byteslice(0,2)
    trans(t)
  else
    l = text.length()-1
    t = text.byteslice(1,l) + text.byteslice(0)
    trans(t)
  end
end

def translate(text)
  list = text.split()
  i = 0
  ans = ""
  while(i<list.size()-1)
    ans = ans + trans(list[i]) + " "
    i += 1
  end
  ans = ans + trans(list[i])
  ans
end
