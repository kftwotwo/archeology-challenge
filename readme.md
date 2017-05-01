```
def function(a)
  a.inject({}){ |a,b| a[b] = a[b].to_i + 1; a}.\
    reject{ |a,b| b == 1 }.keys
end
```

#The inject block goes through each letter and counts how many times that the letter appears.
#Then returns a hash when it is done with that part it returns a hash.
#The reject block is looking at the hash and if anything is = eqaul to one it's going to drop that key.
#Then the ruby mehtod 'keys' turns it back to an array.

#This is my solution:

```
def my_function(a)
  a.select{ |letter| a.count(letter) > 1 }.uniq
end
```

#With my function I am selecting each letter in the array that is past in.
#Then I am counting each occurrences of each letter.
#Next I am going to filter the array by looking at each letter that is greater than one.
#Finally I going to use a ruby method .uniq to drop all duplicates in the array.

