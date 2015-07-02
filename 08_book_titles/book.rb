class Book
  @title
  def initialize
    @title = title
  end

  def titleize(text)
    not_cap = ["and","the","over","but","or","yet","for","nor","so","at","on","in","over","to","since","of","about","till","until","before","ago","below","under"]
    array = text.split
    i = 0
    ans = ""
    while i<array.size-1
      if((array[i].length >2 && !not_cap.include?(array[i])) || (i == 0) || (array[i] == "i"))
        ans += array[i].capitalize! + " "
      else
        ans += array[i] + " "
      end
      i += 1
    end
    if((array[i].length >2 && !not_cap.include?(array[i])) || (i == 0) || (array[i] == "i"))
      ans += array[i].capitalize!
    else
      ans += array[i]
    end
    ans
  end

  def title=(new_title)
    @title = titleize(new_title)
  end

  def title
    @title
  end
end
