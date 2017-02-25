FactoryGirl.define do

  factory :email, class: OpenStruct do
    email = "david@example.com"
    email_parts = email.split '@'

    name = 'David Milanese'
    contact = '0419 166 824'
    enquiry = 'Know when the property is available, Find out the length of the lease, Inspect the property, Obtain a rental application'

    name name
    contact contact
    enquiry enquiry

    # # Assumes Griddler.configure.to is :hash (default)
    to [{ raw: email, email: email, token: email_parts.first, host: email_parts.second }]
    from 'realestate@realestate.com.au'
    subject 'You have a new enquiry'
    body ""
    attachments {[]}
    
    trait :realestate do
      body <<-BODY
        <div>
          <div id="m_5006028459245821136message">
            <h1 class="m_5006028459245821136header"><img src="https://ci4.googleusercontent.com/proxy/Cb8vfdxQScIMRpXlarbyQDTRBusKyMhEzGxRFTVcRrDwaOieBxgpLbz5OQ2aiKQOVgltxMRlXMU1RJ6zFQZUpsAjly7srVVPJjE1D1p4trB5OfA=s0-d-e1-ft#http://s1.rui.au.reastatic.net/rui-static/img/rea-logo-v3.png" style="width:258px" class="CToWUd">
              <div class="m_5006028459245821136header-separator"></div>
              </h1> Hi Michael Williams,
            <p>You have received a new lead from <a href="http://realestate.com.au" target="_blank" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://realestate.com.au&amp;source=gmail&amp;ust=1487292881074000&amp;usg=AFQjCNGoutucSswRiYZSe_UQiEfk2uDabQ">realestate.com.au</a> for</p>
            <br>
            <p>Property id: 418173382</p>
            <p>Property address: 3/11 Chapel Street, Campbelltown SA 5074</p>
            <p>Property URL: <a href="http://www.realestate.com.au/418173382" target="_blank" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://www.realestate.com.au/418173382&amp;source=gmail&amp;ust=1487292881074000&amp;usg=AFQjCNHu65UhlThvvvPphLtXB751_sGGZw">http://www.realestate.com.au/<wbr>418173382</a>
            </p>
            <br>
            <p>User Details:</p>
            <p></p>
            <p>Name: #{name}</p>
            <p>Email: <a href="mailto:#{email}" target="_blank">#{email}</a>
            </p>
            <p>Phone: <a href="tel:#{contact}" value="#{contact}" target="_blank">#{contact}</a>
            </p>
            <p>I would like to: #{enquiry}</p>
            <p>Comments: </p>
            <div class="m_5006028459245821136legal" style="color:#888;margin-top:140px;font-size:12px">
              <p>Remember, you can only use the personal information contained in this email enquiry for the purposes of contacting the person about their property enquiry</p>
              <br>
              <p><a href="http://realestate.com.au" target="_blank" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://realestate.com.au&amp;source=gmail&amp;ust=1487292881075000&amp;usg=AFQjCNHRcqvBnnmvLSkCL46lJgpnMgKlJA">realestate.com.au</a> Pty Ltd (ACN 080 195 535)</p>
              <p>511 Church Street, Richmond, Victoria 3121</p>
              <p>Contact Number: <a href="tel:1300%20134%20174" value="+611300134174" target="_blank">1300 134 174</a> (<span class="aBn" data-term="goog_752120029" tabindex="0"><span class="aQJ">8.00am - 7.00pm</span></span> ESDST)</p>
            </div>
            <div class="m_5006028459245821136footer">Message sent from <a href="http://www.realestate.com.au/" target="_blank" data-saferedirecturl="https://www.google.com/url?hl=en&amp;q=http://www.realestate.com.au/&amp;source=gmail&amp;ust=1487292881075000&amp;usg=AFQjCNHNi5Y9FQhGfrvFWvefXWSNIax0WA">realestate.com.au</a>
              <div class="yj6qo"></div>
              <div class="adL">
              </div>
            </div>
            <div class="adL">
            </div>
          </div>
          <div class="adL">
          </div>
        </div>
      BODY
    end

    trait :domain do
      body <<-BODY
        <div>
        </div>
      BODY
    end

  end
end
