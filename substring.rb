

def substrings(string,dict)
  string_arr = string.split(" ")
  final = {}
  string_arr.each do |word|
    dict.each do |dictw|
      if word.downcase.include?(dictw)
        if(final[:"#{dictw}"] == nil)
          final[:"#{dictw}"] = 1
        else
          final[:"#{dictw}"] += 1
        end

      end
    end
  end
  puts final

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
