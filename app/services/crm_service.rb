class CrmService
  def self.perform crm: nil, name: nil, phone: nil, email: nil, enquiry: nil
    @crm, @name, @phone, @email, @enquiry = crm, name, phone, email, enquiry
    
    method_name = @crm.name.underscore
    send method_name if respond_to? method_name
  end

  private
  def self.hubspot
    # require 'uri'
    # require 'net/http'

    # url = URI("https://api.hubapi.com/contacts/v1/contact/?hapikey=demo")

    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    # request = Net::HTTP::Post.new(url)
    # request["content-type"] = 'application/json'
    # request.body = {
    {
      properties: [
        {
          property: 'email',
          value: @email
        },
        {
          property: 'firstname',
          value: @name.split.first
        },
        {
          property: 'lastname',
          value: @name.split.drop(1).join(' ')
        },
        {
          property: 'phone',
          value: @phone
        }
      ]
    }

    # response = http.request(request)
    # puts response.read_body
  end
end