module Helpers

  def get_mask(mask)
    binary_mask = ""
    
    mask.split(".").each do |v| 
      binary_mask << v.to_i.to_s(2)
    end
    
    binary_mask.count("1")
  end

end

Sinatra::Application.helpers Helpers
