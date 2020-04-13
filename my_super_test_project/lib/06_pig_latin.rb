def translate(a)
  b = a.split
  c=[]
  b.length.times do |i|
    if ["a", "e", "i", "o", "u", "y"].include?(b[i][0]) 
      c[i] = b[i] + "ay"
    elsif ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"].include?(b[i][0])
      if b[i].split(//).slice(1,b[i].length-1).first(2).join == "qu"
        c[i] = b[i].scan(/.../)
        c[i] = c[i].insert(1,c[i].delete_at(0)).join + "ay"
      elsif b[i].split(//).first(2).join == "qu" 
        c[i] = b[i].split(//)
        c[i] = c[i].insert(4,c[i].delete_at(0)).insert(4,c[i].delete_at(0)).join + "ay"
      elsif ["a", "e", "i", "o", "u", "y"].include?(b[i][1])
        c[i] = b[i].split(//)
        puts c[i] = c[i].insert(2,c[i].delete_at(0)).join + "ay"
      else
        if ["a", "e", "i", "o", "u", "y"].include?(b[i][2])
          puts c[i] = b[i].scan(/../)
          puts c[i] = c[i].insert(2,c[i].delete_at(0)).join + "ay"
        elsif b[i].split(//).first(3).join == "sch"
          c[i] = b[i].scan(/.../)
          c[i] = c[i].insert(1,c[i].delete_at(0)).join + "ay"
        else
          c[i] = b[i].split(//)
          c[i] = c[i].insert(0,c[i].delete_at(3)).insert(1,c[i].delete_at(4)).join + "ay"
        end
      
      end

    end  
  end
return c.join(' ')

end