def substrings(str, dic)
  res = Hash.new
  str_list = str.downcase.split
  p str_list
  str_list.each do |test_str|
    dic.each do |sub_str|
      if test_str.include?(sub_str)
        if res[sub_str] == nil
          res[sub_str] = 1
        else  
          res[sub_str] = res[sub_str] + 1
        end
      end
    end
  end
  return Hash[res.sort]
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
