class V1::ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: { contacts: contacts }, status: :ok
  end

  def create
    contact = Contact.new(contact_params)

    if contact.save
      render json:contact, status: :created
    else
      render json: {errors: contact.errors}, status: :unprocessable_entity
    end
  end

  def show
    contact = Contact.find(params[:id])
    render json: contact, status: :ok
  end  

  def update
    contact = Contact.find(params[:id])
    if contact.update(contact_params)
      render json: contact, status: :ok
    else
      render json: { errors: contact.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    head 204
  end

  private
  
  def contact_params
    params.require(:contact).permit(:email, :mobile, :location)
  end

end