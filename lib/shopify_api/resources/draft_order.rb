module ShopifyAPI
  class DraftOrder < Base
    def complete(params)
      response = put(:complete, {}, params)
      load_attributes_from_response(response)
    end

    def send_invoice(params = only_id)
      response = post(:send_invoice, {}, params)
      load_attributes_from_response(response)
    end

    def checkout(params = only_id)
      response = post(:checkout)
      instantiate_record(format.decode(resource.body), {})
    end
  end
end
