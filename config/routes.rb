Rails.application.routes.draw do

  get("/", {:controller => "roll", :action => "homepage"})

  get("/dice/2/6", {:controller => "roll", :action => "two_six"})

  get("/dice/2/10", {:controller => "roll", :action => "two_ten"})

  get("/dice/1/20", {:controller => "roll", :action => "one_twenty"})

  get("/dice/5/4", {:controller => "roll", :action => "five_four"})

  get("/dice/:number_of_dice/:number_of_sides", { controller: "roll", action: "roll_dice" })
end
