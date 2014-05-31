require 'prawn'

class Exporter

  def initialize(format, customFormat = false)
    @format = format
    @customFormat = customFormat
  end

  def exportDetails(alien)
    details = "#{alien.codeName} #{alien.bloodColor} #{alien.noOfAntennae} #{alien.noOfLegs} #{alien.homePlanet}"
    if @format.eql? "text"
      File.open('alien.txt', 'w') do |file|
        file.write(details)
        puts "Data has been saved to alien.txt"
      end
    end

    if @format.eql? "pdf"
      Prawn::Document.generate("alien.pdf") do
        text details 
        puts "Data has been saved to alien.pdf"
      end
    end
  end
end