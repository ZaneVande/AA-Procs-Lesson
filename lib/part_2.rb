def reverser(str, &prc)
    new_str = ""
    str_1 = str.reverse
    new_str = prc.call(str_1) 
    new_str
end

def word_changer(string, &prc)
    words = string.split(" ")
    new_words = []
    words.each do |word|
        new_words << prc.call(word)
    end
    new_words.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
    result_1 = prc_1.call(num)
    result_2 = prc_2.call(num)
    if result_1 > result_2
        return result_1
    else
        return result_2
    end
end

def and_selector(arr, prc_1, prc_2)
    new_arr = []
    arr.each do |ele|
        if prc_1.call(ele) == true && prc_2.call(ele) == true
            new_arr << ele
        end
    end 
    new_arr
end

def alternating_mapper(arr, prc_1, prc_2)
    new_arr = []
    arr.each_with_index do |ele, idx|
        if idx.even?
            new_arr << prc_1.call(ele)
        else
            new_arr << prc_2.call(ele)
        end
    end
    new_arr
end
