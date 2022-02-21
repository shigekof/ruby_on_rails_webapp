class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    # if @contact.deliver
    #   flash[:error] = nil
    # else
    #   flash.now[:error] = "Please fill in the required field."
    #   render :new
    # end
  end
end
