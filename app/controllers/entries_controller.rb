class EntriesController < ApplicationController
def index
  @entries = Entry.all.sort_by{|entry| entry.title.downcase}
end

def show
  @entry = Entry.find(params["id"])
end

def new
  
end

def create
  entry_params = params["entry"].permit("title", "contents", "date")
  entry = Entry.create(entry_params)
  redirect_to(entry_path(entry))
end

def edit
  @entry = Entry.find(params["id"])
end

def update
  entry_params = params["entry"].permit("title", "contents", "date")
  entry = Entry.find(params["id"])
  entry.update(entry_params)
  redirect_to(entry_path(entry))
end
end
