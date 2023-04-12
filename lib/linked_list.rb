require_relative './node'
require "byebug"
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  length = 0

  def reverse!
    if head.nil?
      nil
    else
      length = 0
      curr = head
      while curr.next_node
        length += 1
        curr = curr.next_node
      end
      if length != 0
        curr = tail
        count = 0
        while count < (length)
          prev_to_tail = tail.prev_node
          tail.prev_node = nil
          prev_to_tail.next_node = nil
          tail.next_node = head
          head.prev_node = tail
          # byebug
          self.head = curr
          self.tail = prev_to_tail
          head.prev_node = nil 
          count += 1
        end
      end
    end
  end
end
# prev_to_tail = tail.prev_node
# old_tail = tail
# tail.prev_node = nil
# prev_to_tail.next_node = nil
# tail.next_node = head
# head.prev_node = tail
# self.head = old_tail
# self.tail = prev_to_tail
# count += 1