# Archeology Challenge

This is an exercise in software archeology. Start with this cryptic Ruby function:

```
def function(a)
  a.inject({}){ |a,b| a[b] = a[b].to_i + 1; a}.\
    reject{ |a,b| b == 1 }.keys
end
```

Please write a paragraph explaining what it does and how it works. Then, rewrite it so that it's
beautiful and elegant and the intent is clear. Feel free to use any references or tools you would
normally use.

## My paragraph

The inject block goes through each letter and counts how many times that the letter appears. Then returns a hash when it is done with that part it returns a hash. The reject block is looking at the hash and if anything is = eqaul to one it's going to drop that key. Then the ruby method 'keys' turns it back to an array.

## My solution:

```
def my_function(a)
  a.select{ |letter| a.count(letter) > 1 }.uniq
end
```

With my function I am selecting each letter in the array that is past in. Then I am counting each occurrences of each letter.Next I am going to filter the array by looking at each letter that is greater than one.Finally I going to use a ruby method .uniq to drop all duplicates in the array.
