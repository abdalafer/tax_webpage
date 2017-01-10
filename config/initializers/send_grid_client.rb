class SendGridClient     
  
    def self.send_contact(email_body) 
        require "http"

        HTTP.auth("Bearer #{ENV['SENDGRID_API_KEY']}")
               .post("https://api.sendgrid.com/v3/mail/send", :json => email_body)
    end 
end 
