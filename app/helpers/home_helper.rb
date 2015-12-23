module HomeHelper

  def htmlsafe_event(event, time, properties)
    txt = time_ago_in_words(time) + " ago "
    if event == "$view"
      txt += " Viewed " + properties["url"]
    elsif event == "$change"
      txt += " Changed " + properties["tag"] + " on " + properties["page"]
    elsif event == "$click"
      txt += " Clicked " + properties["text"] + " on " + properties["page"]
    else
      txt += event
    end 
    txt
  end
  
  def gem_collection
    #[gem, functionality, in techspace, link, notes]
    [
      ["Devise","Authentication Solution","User Authentication is handled by Devise","https://github.com/plataformatec/devise", ""],
      ["Browser","Browser Detection","User Browser and platform information is collected by Browser","https://github.com/fnando/browser", ""],
      ["Warden","Authentication Solution","User sign-in and sign out events are captured by Warden Manager","https://github.com/hassox/warden", "It comes with devise"],
      ["Geocoder", "Geocoding Solution", "Lantitude and longitude are extracted from the address provided by the user", "https://github.com/alexreisner/geocoder", ""],
      ["Gritter", "Add Growl-like Notifications", "All the flash message coming on techspace are shown by gritter", "https://github.com/RobinBrouwer/gritter", ""],
      ["Ahoy", "Track visits and events in Ruby, JavaScript, and native apps", "All user actions are stored in database like click, input change , page visit with the help of Ahoy", "https://github.com/ankane/ahoy", ""],
      ["Rubycritic","Provide a quality report of your Ruby code","Get the Report on the Ruby code","https://github.com/whitesmith/rubycritic","Used in Development ENV"],
      ["Datagrid","Provide table like representation, filtering, sorting , Export CSV and many options","Representing Posts","https://github.com/bogdan/datagrid",""],
      ["Railroady","RailRoady generates Rails model and controller UML diagrams as cross-platform .svg files","Get UML Diagrams","https://github.com/preston/railroady","Used in Development ENV"]
    ]
  end
  
end
