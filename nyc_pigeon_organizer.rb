def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  pigeon_names = []
  pigeon_characteristics = []
  data.each do |characteristic, category|
    category.each do |type, names|
      pigeon_names << names
      pigeon_names = pigeon_names.flatten.uniq
      pigeon_characteristics << characteristic
      pigeon_characteristics = pigeon_characteristics.uniq

    
    end
  end
  
  data.map do |characteristic, category|
    category.map do |type, names|
      pigeon_names.each do |nam|
        pigeon_characteristics.each do |char|
          puts names
            if names.include?(nam) # && !pigeon_list[nam][char]
              pigeon_list[nam] = {char => type}
            else
              pigeon_list[nam][char] = type
              puts "cow"
            end          
        end
      end
    end
  end  
  
  pigeon_list 
  
end