class EntriesController < ApplicationController
 def new
    @entry = Entry.new 
 end

 def create
    @entry["title"] = params ["title"]
    @entry["title"] = params ["title"]
    @entre.save
    redirect_to "/places"
 end

end
