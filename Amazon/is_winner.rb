#!/usr/bin/env ruby
puts "Hello World!"

def amazon_fresh_promotion(code_list, shopping_cart)
#     return 1 if code_list.empty?
#     return 0 if shopping_cart.empty?
    
#     i, j = 0, 0
#     while i < code_list.length && j+code_list[i].length <= shopping_cart.length
#         match = 1
#         0..code_list[i].length do |k|
#             if code_list[i][k] != 'anything' && code_list[i][k] != shopping_cart[j+k]
#                 match = 0
#                 break
#             end
#         end
#         if match
#             j += code_list[i].length
#             i += j
#         else
#             j+=1
#         end
#     end
#     return i == code_list.length
    
    # approach 2
    return 1 if code_list.empty?
    return 0 if shopping_cart.empty?
    i,j = 0, 0
    0.upto(shopping_cart.length-1) do |k|
        if code_list[i][j] == shopping_cart[k] || code_list[i][j] == 'anything'
            j +=1
            if j == code_list[i].length
                i+=1
                j = 0
            end
            if i == code_list.length
                return 1
            end
        else
            j = code_list[i][0] == 'anything' ? 1: 0
        end
    end
    return 0
    
     
end

code_list = [['apple', 'apple'], ['banana', 'anything', 'banana']] 
shopping_cart = ['apple', 'banana', 'apple', 'banana', 'orange', 'banana']
puts(amazon_fresh_promotion([], ['orange', 'apple', 'apple', 'banana', 'orange', 'banana']))
puts(amazon_fresh_promotion([['apple', 'apple'], ['banana', 'anything', 'banana']], ['banana', 'orange', 'banana', 'apple', 'apple']))
puts(amazon_fresh_promotion([['apple', 'apple'], ['banana', 'anything', 'banana']], ['apple', 'banana', 'apple', 'banana', 'orange', 'banana']))
puts(amazon_fresh_promotion([['apple', 'banana','apple', 'banana', 'coconut']], ['apple', 'banana', 'apple', 'banana', 'apple', 'banana']))
puts(amazon_fresh_promotion([['apple', 'orange'], ['orange', 'banana', 'orange']], ['apple', 'orange', 'banana', 'orange', 'orange', 'banana', 'orange', 'grape']))
puts(amazon_fresh_promotion([['apple', 'apple'], ['banana', 'anything', 'banana']], ['apple', 'apple', 'banana', 'banana']))
puts(amazon_fresh_promotion([['anything'], ['apple', 'anything', 'banana']], ['apple', 'apple', 'banana', 'banana']))
puts(amazon_fresh_promotion([['apple', 'apple'], ['apple', 'anything', 'banana']], ['apple', 'apple', 'apple', 'apple', 'banana']))
puts(amazon_fresh_promotion([['apple', 'apple'], ['apple', 'banana']], ['apple', 'apple', 'apple', 'banana']))
puts(amazon_fresh_promotion([["anything", "apple" ], ["banana", "anything", "banana"]], ["orange", "grapes", "apple", "orange", "orange", "banana", "apple", "banana", "banana"]))
puts(amazon_fresh_promotion([['anything']], ['apple', 'apple', 'apple', 'banana']))