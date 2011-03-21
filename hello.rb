require 'rubygems'
require 'xmlsimple'


hotelHashList = Hash.new

print('Enter a hotel name: ' )
name = gets()
puts( "Hello #{name}" )
print('Enter description for this hotel:')
desc = gets()
hotelHashList[name] = desc

print(hotelHashList)

hotelsXml = XmlSimple.xml_out(hotelHashList, 'RootName' => "Hotel")

print(hotelsXml)