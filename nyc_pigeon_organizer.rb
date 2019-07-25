def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names = []
  pigeon_characteristics = []
  # Get Pigeon Names
  data.each do |characteristic, category|
    # Get Characteristics
    pigeon_characteristics << characteristic
    pigeon_characteristics = pigeon_characteristics.uniq
    category.each do |type, names|
      pigeon_names << names
      pigeon_names = pigeon_names.flatten.uniq
    end
  end
  
  
  
  puts pigeon_characteristics
end