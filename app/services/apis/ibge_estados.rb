require 'net/http'
module Apis
  class IbgeEstados
    def initialize
      @url_base = 'https://servicodados.ibge.gov.br/api/v1/localidades'
    end
    def execute
      uri = URI("#{@url_base}/estados")
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
