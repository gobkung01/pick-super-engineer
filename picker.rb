#This is funtion to picking up name from file.

def pick_engineer() #Method to pick name from file
  name_file = File.open("engineers.txt") #Open file text.
  name_list = Array.new() #Create blank array.
  name_file.each { |name| name_list.push(name) } #Read name from file then push it to array.
  rnd_name = name_list[rand(name_list.length)] #Random name from list then print it.
  return rnd_name

end

def featureA(name)
  if name.include?" "

     puts name.gsub(" ", ".")

   else

     puts ""

   end
end

def featureB(name)
       index =name.split #split name and lastname in array
       ndot =index[0]+" "+index[1].chr+"..." #to show  First name and first character lastname  with "..."# puts ndot
       puts ndot
end

def featureC( keyw)
  name = pick_engineer() #Call method
  key = keyw.join #join array to string
  loop_count = 0
  if !keyw.empty? #check if not empty
    while 1 do
      name = pick_engineer() #Call method
      if name.include? key
        break
      end
      loop_count += 1
    end
  end
  #puts "Loop count: #{loop_count}"
  puts name
  featureA(name) #call featureA and send random name
  featureB(name) #call featureB and send random name
end

featureC(ARGV) #cal featureC and send random name and keyword
