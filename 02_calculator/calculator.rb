def add(num_1, num_2)
  num_1+num_2
end

def subtract(num_1,num_2)
  num_1-num_2
end

def sum(num_list)
  sum = 0;
  num_list.each {|i| sum += i}
  sum
end

def multiply(num_list)
  ans = 1;
  num_list.each{ |i| ans = ans*i}
  ans
end

def power(num_1,num_2)
  ans = 1
  while num_2>0
    ans = ans*num_1
    num_2 = num_2 - 1
  end
  ans
end

def factorial(num_1)
  ans = 1
  while num_1>0
    ans = ans*num_1
    num_1 -= 1
  end
  ans
end
