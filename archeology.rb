def function(a)
  a.inject({}){ |a,b| a[b] = a[b].to_i + 1; a}.\
    reject{ |a,b| b == 1 }.keys
end


# my solution

def my_function(a)
  a.select{ |letter| a.count(letter) > 1 }.uniq
end
