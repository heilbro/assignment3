class PlacesController < ApplicationController

  def new
    @places = Place.new
  end

  def create
  
  @places = Place.new
  @places ["name"] = params ["name"]
  @places.save
  redirect_to "/places"

  end

  def index 
    @places = Place.all
  end
  
  def show
    @places = Place.find_by ({"id" => params["id"]})
    @entries = Entry.where ({"place_id" => @place["id"]})
  end

  end 

  # render companies/index view