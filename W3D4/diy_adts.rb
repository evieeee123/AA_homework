# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:

class Stack
  def initialize
    # create ivar to store stack here!
    @ivar = []
  end
  def push(el)
    # adds an element to the stack
    @ivar.push(el)
  end
  def pop
    # removes one element from the stack
    @ivar.pop
  end
  def peek
    # returns, but doesn't remove, the top element in the stack
      @ivar.last
  end
end


# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance methods: 
# enqueue(el), dequeue, and peek.

class Queue
    def initialize
        @ivar = []
    end
    def enqueue(el)
        @ivar.push(el)
    end
    def dequeue
        @ivar.shift
    end
    def peek
        @ivar.first
    end
end


# Our Map class should have the following instance methods: 
# set(key, value), get(key), delete(key), show.

class Map
    def initialize
        @ivar = []
    end
    def set(key, value)
        
    end
end