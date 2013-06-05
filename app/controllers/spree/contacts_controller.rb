module Spree
  class ContactsController < Spree::StoreController

    def new
      @contact = Spree::Contact.new
    end
  
    def create
      @contact = Spree::Contact.new params[:contact]
      if @contact.save
        redirect_to contact_path, :notice => t(:on_send_message)
      else
        render :new
      end
    end
  
  end
end
