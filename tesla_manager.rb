require 'tesla_api'

class TeslaManager

  # @return [TeslaApi::Vehicle]
  attr_reader :vehicle

  def initialize(
      client_id: '81527cff06843c8634fdc09e8ac0abefb46ac849f38fe1e431c2ef2106796384',
      client_secret: 'c7257eb71a564034f9419ee651c7d0e5f7aa6bfbd18bafb5c5c033b093bb2fa3',
      email:,
      password:
  )
    @client = TeslaApi::Client.new(email, client_id, client_secret)
    @client.login!(password)
    @vehicle = @client.vehicles.first # => <TeslaApi::Vehicle>

    puts @vehicle.vehicle_state
  end

  private

  # @return [TeslaApi::Client]
  attr_reader :client

end