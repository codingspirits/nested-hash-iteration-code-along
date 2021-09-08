require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  contacts = {
     "Jon Snow" => {
       name: "Jon",
       email: "jon_snow@thewall.we", 
       favorite_ice_cream_flavors: ["chocolate", "vanilla"]
     },
     "Freddy Mercury" => {
       name: "Freddy",
       email: "freddy@mercury.com",
       favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
     }
   }
  
def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    #binding.pry to see what person and contact_details_hash equal to
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data|
        #binding.pry to see what attribute and data equal to
        if attribute == :favorite_ice_cream_flavors
       data.delete_if {|ice_cream| ice_cream == 'strawberry'}
      end
    end  
    end
  end
end


p remove_strawberry(contacts)
