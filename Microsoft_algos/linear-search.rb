# [43, 4, 29, 9].map{ |a| p a.to_s }
# 43
# 2+1

# sorted([(434, 43), (444, 4)], key = lambda x: x[0])

# 444, 434

# 443

# Recursion vs iteration
# ---------------

                3
                
        2              4
    1                      5



    def search(value, node)
      return nil if node.nil
  
      if value == node.value 
        return node
      elsif value > node.value
        search(value, node.right)
      else value < node.value
        search(value, node.left) 		
      end
    end


log(n)
log(n)
    search(5, node)

        stack [ search(5, node4), search(5, node5), return node5 ]
        
        
        https://medium.com/@cskkman/scaling-load-balancing-4a2447fa4529



nil

insert 

list = new_node

list.next = nil

insert
traverse(list) o(n)

last_node.next = new_node
new_node.next = nil




1 -> 2 -> 3  null

1 -> 2 -> 3 -> 5 -> null

insert(5)

while node.next:
  if cond:
    break
  node = node.next

node.next = new_node
node.next.next = None



