require 'prawn'

class Exporter

  def initialize(format, customFormat = false)
    @format = format
    @customFormat = customFormat
  end

  def exportDetails(alien)
    if @format.eql? "text"
      File.open('alien.txt', 'w') do |file|
        file.write("#{alien.codeName} #{alien.bloodColor} #{alien.noOfAntennae} #{alien.noOfLegs} #{alien.homePlanet}")
      end
    end

    if @format.eql? "pdf"
      Prawn::Document.generate("alien.pdf") do
        text "#{alien.codeName} #{alien.bloodColor} #{alien.noOfAntennae} #{alien.noOfLegs} #{alien.homePlanet}"
      end
    end
  end
end