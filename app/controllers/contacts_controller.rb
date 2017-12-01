class ContactsController < ApplicationController
	def new
		@contact = ContactForm.new
	end

	def create
		@contact = ContactForm.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message.'
			render :new
		end
	end
end
