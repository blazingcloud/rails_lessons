class AddressesController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    addr = @person.addresses.build(params[:address])
    if (addr.save)
      flash[:notice] = "address saved!"
    else
      flash[:notice] = "ACK NO ADDRESS!"
    end
    redirect_to(@person)
  end
end
