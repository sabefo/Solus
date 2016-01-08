class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def show
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Tus datos se guardaron, en breve nos pondremos en contacto contigo"
      redirect_to new_contact_path
    else
      render 'new'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :comment, :phone, :email)
    end

end
