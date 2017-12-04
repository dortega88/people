class ContactsController < ApplicationController
	def show
		@contact = Contact.find(params[:id])
	end

	def new
	end
	
	def create
		# render plain: params[:contact].inspect
		@contact = Contact.new(params.require(:contact).permit(:name, :phone))
		@contact.save
		redirect_to @contact
	end

end
