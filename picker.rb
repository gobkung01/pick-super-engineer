#This is funtion to picking up name from file.

def pick_engineer() #Method to pick name from file
  name_file = File.open("engineers.txt") #Open file text.
  name_list = Array.new() #Create blank array.
  name_file.each { |name| name_list.push(name) } #Read name from file then push it to array.
  rnd_name = name_list[rand(name_list.length)] #Random name from list then print it.
  puts rnd_name #print random name
  featureA(rnd_name) #call featureA and send random name
  featureB(rnd_name) #call featureB and send random name
  featureC(rnd_name , ARGV) #cal featureC and send random name and keyword
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

def featureC(name , keyw)
  key = keyw.join #join array to string
  if !keyw.empty? #check if not empty
    if name.include? key #find with keyword
      puts name #print name to screen
    end
  end
end

pick_engineer() #Call method
