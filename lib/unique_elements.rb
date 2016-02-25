# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
    empty = {}
    unique = []
    
    i = 0 
    while i < arr.length
        if empty.has_key?(arr[i]) == true
            empty[arr[i]] +=1
        else
            empty[arr[i]] = 1
        end
    i += 1
    end
    
    empty.each {|k,v| unique.push(k) if v<2}
    unique
end
