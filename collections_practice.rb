# your code goes here

def begins_with_r(array)
  array.each do | element | 
    if !element.start_with?("r")
      return false 
    end 
  end 
  true 
end 

def contain_a(array)
  array.select do | element | 
    element.include?("a")
  end 
end 

def first_wa(array)
  array.detect do | element | 
    element.to_s.start_with?("wa")
  end 
end 

def remove_non_strings(array)
  array.select do | element | 
    element.class == String
  end 
end 

def count_elements(collection)
  newCollection = collection.uniq
  newCollection.each do | element |
    element[:count] = collection.count(element)
  end 
  newCollection
end 

def merge_data(keys, data)
  i = 0
  merged_data = []
  data.each do | item |
    item.each do | key, array |
      merged_data << keys[i].merge(array)
      i += 1 
    end 
  end 
  merged_data
end 

def find_cool(hashes)
  cool_hashes = []
  hashes.each do | key, value |
    if value == "cool"
      cool_hashes << key 
    end 
  end 
  cool_hashes
end 

  # let(:cool) {
  #   [
  #           {
  #                 :name => "ashley",
  #           :temperature => "sort of cool"
  #       },
  #           {
  #                 :name => "blake",
  #           :temperature => "cool"
  #       }
  #   ]
  # }

def organize_schools(schools)
  locations = []
  organized_schools = Hash.new
  
  schools.each do | school |
    locations << school[1][:location]
    organized_schools[school[1][:location]] = []
  end 
  
  locations = locations.uniq
  
  schools.each do | school |
    locations.each do | location |
      if school[1][:location] == location 
        organized_schools[location] << school[0]
      end 
    end 
  end 
  
  organized_schools
end 
