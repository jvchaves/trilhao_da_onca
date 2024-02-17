require 'net/http'
module Apis
  class IbgeCidades
    def initialize
      @url_base = "https://servicodados.ibge.gov.br/api/v1/localidades"
    end
    def execute
      uri = URI("#{@url_base}/municipios")
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
