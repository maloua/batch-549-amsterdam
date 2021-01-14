# Iterators & Block

## 1. Recap
- CRUD on arrays
- Range

## 2. Iteration
- for element in array 

## 3. Iterators
### What they have in common
- Whenever you think "I need to do `something` with every single element in the array", you need an iterator. 
- Iterators do `something` **once** for **every** element in the array
- e.g. puts all of the elements in an array

### What makes them different: return value
What does a method return? 
- e.g. the return value of `#upcase`, is the original string with all characters transformed to capital letters

### Basic iterators
The return value of these iterators will always be the initial array
- `#each`
- `#each_with_index`

### Iterators with a special return value
- `#map` --> the elements transformed by `some code` --> Array
- `#count` --> the sum of elements for which `some code` is true --> Integer
- `#select` --> the elements for which `some code` is true --> Array

## 4. Blocks
- Anonymous method. Just like a method, it returns the last statement executed (implicit return)
- One-line syntax with `{ }`, multiline syntax with 
```
do |element|
  # code code code
end
```

When calling a method with a block, the block is just another argument of the method. You won't see it in the method signature though! Two useful methods to use **inside** your method:
- `#block_given?` --> check if a block argument was past to your method, it'll return true or false --> Boolean
- `#yield` --> this will call your block, in other words: execute the code inside the block!

```
def timer
  puts "I'm here first..."
  yield
  puts "... and this is my third and final message."
end

timer do
  puts "... and here second ..."
end
```

If the block itselfs takes arguments, you have to pass these when calling the block like so: `yield('hello', name)`.

```
def greet(name)
  upcased_name = name.upcase
  puts yield(upcased_name)
end

greet('john') do |name|
  "Hello #{name}!"
end

# => "Hello JOHN!"
```

## 5. Exercises
### 1. Team Members
Don't overthink this one!

### 2. Enumerable Methods
Have the documentation open. Make sure it's the correct ruby version (check the URL) - we're using Ruby 2.6.6

### 3. Burger Restaurant
This one's tricky. Read very carefully, take it step by step, and write pseudocode.