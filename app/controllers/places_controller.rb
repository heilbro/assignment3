class PlacesController < ApplicationController
  def new
    @places = Place.new
end

def create
  
  @places = Places.new
  @places ["name"] = params ["name"]
  @places.save
  redirect_to "/places"

  def index 
    @places = Places.all
  end
  
  def show
    @places = places.find_by ({ "id" => params ["id"]})
    @entries = Entry.where ({"place_id" => @place["id"]})
  end



  # render companies/index view