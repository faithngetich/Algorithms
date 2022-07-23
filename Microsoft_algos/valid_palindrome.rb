# def is_palindrome(s)
#     alph_char = s.gsub!(/[^0-9A-Za-z]/, " ")
#     split_string = alph_char.split("")
#     arr = []
#     s.size.times { arr << split_string.pop}
#     # a.upcase == a.reverse.upcase
#     require 'pry'; binding.pry
#     s.delete(" ").upcase == arr.join.delete(" ").upcase
# end
def is_palindrome(s)
    # string.gsub(/\W|\_/, "").downcase
    # l = string.length
    # if l.odd?
    #     # require 'pry'; binding.pry
    #     false
    # else
    #     0.upto(l/2) do |index_counter|
    #         if string[index_counter] != string[-(index_counter+1)]
    #             false
    #         end
    #     end
    #     true
    # end
    str = s.gsub(/\W|\_/, "").downcase
    l=str.length
    # if l.odd?
    #     false
    # else
        (l/2).times do |index_counter|
            if str[index_counter] != str[-(index_counter + 1)]
                return false
            end
        end
        true
    # end
end
p is_palindrome("Ama")

# split_string = string.split("")
#   reversed = []
#   string.size.times { reversed << split_string.pop }

121
1333
