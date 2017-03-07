# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).
require 'faraday/http_cache'

module SuggestGrid
  class FaradayClient < HttpClient
    # The constructor.
    def initialize(timeout: nil, cache: false, max_retries: nil, retry_interval: nil)
      @connection = Faraday.new do |faraday|
        faraday.use Faraday::HttpCache, serializer: Marshal if cache
        faraday.request :multipart
        faraday.request :url_encoded
        faraday.ssl[:ca_file] = Certifi.where
        faraday.adapter Faraday.default_adapter
        faraday.options[:params_encoder] = Faraday::FlatParamsEncoder
        faraday.options[:open_timeout] = timeout if timeout
        faraday.request :retry, max: max_retries, interval: retry_interval if (max_retries and retry_interval)
      end
    end

    # Method overridden from HttpClient.
    def execute_as_string(http_request)
      response = @connection.send(http_request.http_method.downcase, http_request.query_url) do |request| 
        request.headers = http_request.headers
        request.body = http_request.parameters
      end

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def execute_as_binary(http_request)
      response = @connection.send(http_request.http_method.downcase, http_request.query_url) do |request| 
        request.headers = http_request.headers
        request.body = http_request.parameters
      end

      return convert_response(response)
    end

    # Method overridden from HttpClient.
    def convert_response(response)
      return HttpResponse.new(response.status, response.headers, response.body)
    end
  end
end