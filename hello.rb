require 'rubygems'
require 'xmlsimple'


class Hotel
  attr_accessor :name, :description
 
  def initialize(name, description)
    @name = name
    @description = description
  end
  
  def to_s
      @name + ", " + @description
    end
end

def saySomething()
  puts "\e[H\e[2J"
   print("Welcome to my extraordinary Hotels DB\n")
   print("Please select an option: Q to Quit\n")
   print("\n")
   print("1. View all Hotels\n")
   print("2. Add Hotel\n")
   print("3. Change Hotel\n")
   print("4. Delete Hotel\n")
   print("5. Search\n")
   print("Q. Quit\n")
end


hotelHashList = {}

saySomething


cmd = ""
until cmd == 'Q' do
   print ("What is your bidding my master? ")
     cmd = gets
    print cmd
    
    print cmd == 'Q'
    end

hotelsXml = XmlSimple.xml_out(hotelHashList, 'RootName' => "HotelList")



def printHotelList() 
  print(HotelHashList.to_s)
end  



def addHotel()
  puts( "Hello #{name}" )
  print('Enter description for this hotel:')
  desc = gets()
  hotelHashList[name] = Hotel.new(name,desc)
end



