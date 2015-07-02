def reverser(&block)
    text = block.call
    text.reverse!
    text = text.split
    ans = ""
    i = text.size()-1
    while i>0
      ans = ans + text[i] + " "
      i -= 1
    end
    ans = ans + text[i]
end

def adder(num=1, &block)
  ans = block.call + num
  ans
end

def repeater(num=1, &block)
  i = 0
  while i<num
    block.call
    i += 1
  end
end
