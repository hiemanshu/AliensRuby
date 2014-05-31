class Alien

  def initialize(cName, bColor, noAnt, noLeg, hPlanet)
    @codeName = cName
    @bloodColor = bColor
    @noOfAntennae = noAnt
    @noOfLegs = noLeg
    @homePlanet = hPlanet
  end

  attr_reader :codeName, :bloodColor, :noOfAntennae, :noOfLegs, :homePlanet

end