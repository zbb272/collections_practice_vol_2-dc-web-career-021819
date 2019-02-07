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
  hashes.each do | hash |
    if hash[:temperature] == "cool"
      cool_hashes << hash 
    end 
  end 
  cool_hashes
end 

# def organize_schools(schools)
#   locations = []
#   organized_schools = Hash.new
  
#   schools.each do | school |
#     locations << school[1][:location]
#     organized_schools[school[1][:location]] = []
#   end 
  
#   locations = locations.uniq
  
#   schools.each do | school |
#     locations.each do | location |
#       if school[1][:location] == location 
#         organized_schools[location] << school[0]
#       end 
#     end 
#   end 
  
#   organized_schools
# end 

def organize_schools(schools)
  # locations = []
  organized_schools = Hash.new 
  
  schools.each do | key, data |
    data.each do | keys, location |
      # locations << location 
      organized_schools[location] = []
    end 
  end 
  
  # locations = locations.uniq
  
  organized_schools.each do | location, name_array |
    schools.each do | key_name, data |
      data.each do | key, location_string |
        if location == location_string
          organized_schools[location] << key_name
        end 
      end 
    end 
  end 
  organized_schools
end 
  # let(:schools) {
  #     {
  #     "flatiron school bk" => {
  #       :location => "NYC"
  #     },
  #     "flatiron school" => {
  #       :location => "NYC"
  #     },
  #     "dev boot camp" => {
  #       :location => "SF"
  #     },
  #     "dev boot camp chicago" => {
  #       :location => "Chicago"
  #     },
  #     "general assembly" => {
  #       :location => "NYC"
  #     },
  #     "Hack Reactor" => {
  #       :location => "SF"
  #     }
  #   }
  # }
  # let(:organized_schools) {
  #   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  #   "SF"=>["dev boot camp", "Hack Reactor"],
  #   "Chicago"=>["dev boot camp chicago"]}
  # }
