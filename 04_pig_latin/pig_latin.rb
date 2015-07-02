def trans(text)
  capital = false
  caps = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
  caps = caps.split()
  if (caps.include?(text.chr))
    capital = true
  end
  vowels = ['a', 'e', 'i', 'o', 'u']
  if(vowels.include?(text[0]))
    text = text + "ay"
  elsif ((['q'].include?(text[0])) && (['u'].include?(text[1])))
    l = text.length()-2
    t = text.byteslice(2,l) + text.byteslice(0,2)
    trans(t)
  else
    l = text.length()-1
    t = text.byteslice(1,l) + text.byteslice(0)
    trans(t)
  end
  if(capital)
    text.capitalize!
  end
  text
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
