class WelcomeController < ApplicationController
  def index
    @websites = [
      ["http://railsgirls.com", "Rails Girls"],
      ["https://en.wikibooks.org/wiki/Ruby_Programming", "Wikibooks"],
      ["http://guides.rubyonrails.org", "Ruby on Rails Guides"],
    ]
    
    #@entries = Entry.all.sort_by{|entry| entry.date}.reverse
    #Entry.all.sort_by(&:title)
  end
end
