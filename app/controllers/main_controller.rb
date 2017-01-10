class MainController < ApplicationController
    before_filter :check_language

    def index
        render :layout => 'application'
    end

    def services
        render :layout => 'application'
    end

    def resources
        render :layout => 'application'
    end

    def contact
        render :layout => 'application'
    end

    def contact_post
        Contact.send_contact(contact_params)

        respond_to do |format|
            format.js
        end
    end

    def about
        render :layout => 'application'
    end

    def testimonials
    end

    def payment
    end

    def privacy_policy
     render :layout => 'application'
    end

    def contact_params
        params.require(:contact).permit(:company_name, :first_name, :last_name, :phone, :email, :message)
    end

end 