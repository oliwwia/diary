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
  entry_params = params["entry"].permit("title", "contents")
  entry = Entry.create(entry_params)
  redirect_to(entry_path(entry))
end
end
