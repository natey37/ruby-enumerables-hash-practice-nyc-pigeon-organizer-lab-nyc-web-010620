def new_pigeon_data(pigeon_info)
  final = {}
  pigeon_info.each do |outer_info, inner_info|
    inner_info.each do |category, array|
      array.each do |name|
      final[name] = { :color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  p_names = final.keys
  pigeon_info[:color].each do |bird_color, names|
    names.each do |name|
      if p_names.include?(name)
        final[name][:color] << bird_color
      end 
    end 
  end 
  pigeon_info[:gender].each do |gender, names|
    names.each do |name|
      if p_names.include?(name)
        final[name][:gender] = gender 
      end 
    end 
  end 
  pigeon_info[:lives].each do |place, names|
    names.each do |name|
      if p_names.include?(name)
        final[name][:lives] = place 
      end 
    end 
  end 
  final

end 

