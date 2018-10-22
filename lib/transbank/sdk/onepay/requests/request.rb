module Transbank
  module Onepay
    # Base module with methods & attributes common to Requests
    module Request
      include Utils::JSONUtils, Utils::SignatureUtils
      attr_accessor :api_key
      attr_accessor :app_key
      #attr_accessor :shared_secret

      # Set the request's @api_key, @shared_secret overriding the ones in
      # the [Base] class
      def set_keys_from_options(options)
        transform_hash_keys(options)
        new_api_key = options.fetch(:api_key, nil)
        #new_shared_secret = options.fetch(:shared_secret, nil)
        self.api_key = new_api_key unless new_api_key.nil?
       # self.shared_secret = new_shared_secret unless new_shared_secret.nil?
      end
    end
  end
end
