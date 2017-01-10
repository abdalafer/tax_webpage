class Contact
  def self.send_contact(contact_params)
    email_body = {
        "personalizations" => [
            {
                "to"=> [
                    {
                        "email"=> "#{ENV['MAIL_TO']}"
                    }
                ],
                "subject"=> "InTaxInc New Lead from Website"
            }
        ],
        "from"=> {
            "email"=> "#{ENV['MAIL_FROM']}"
        },
        "content"=> [
            {
                "type"=> "text/plain",
                "value"=> "Company Name: #{contact_params[:company_name]} \n First Name: #{contact_params[:first_name]} \n Last Name: #{contact_params[:last_name]} \n Phone Number: #{contact_params[:phone]} \n Email: #{contact_params[:email]} \n Message: #{contact_params[:message]}"
            }
        ]
    }

    Rails.logger.info("ContactParams(#{contact_params})")
    SendGridClient.send_contact(email_body)
  end
end