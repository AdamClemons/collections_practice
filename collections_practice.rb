require 'pry'

def sort_array_asc(arr)
    arr.sort    
end

def sort_array_desc(arr)
    arr.sort {|a, b| b <=> a}
end

def sort_array_char_count(arr) 
    arr.sort do |a, b|
        a.length <=> b.length        
    end
end

def swap_elements(arr)
    arr[1], arr[2] = arr[2], arr[1]
    arr
end

def reverse_array(arr)
    arr.reverse     
end

def kesha_maker(arr)
    keshed = []
    arr.each do |word|
        word[2] = "$"
        keshed << word       
    end
    keshed
end

def find_a(arr)
    a_words = []
    arr.each {|word| a_words << word if word[0] == "a"}
    a_words
end

def sum_array(arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

def add_s(arr)
    # arr.collect do |word|
    #     if arr[1] == word
    #         word
    #     else
    #         word + "s"
    #     end
    # end

    arr.each_with_index.collect do |element, index|
        index == 1 ? element : element + "s"
    end


end

# binding.pry