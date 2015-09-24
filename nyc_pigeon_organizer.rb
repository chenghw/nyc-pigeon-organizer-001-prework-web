require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, detail|
    detail.each do |specific, names|
      names.each do |name|
        if pigeon_list.has_key?(name)
          if pigeon_list[name].has_key?(category)
            pigeon_list[name][category] << specific.to_s
          else
            pigeon_list[name][category] = [specific.to_s]
          end
        else
          pigeon_list[name] = {}
          pigeon_list[name][category] = [specific.to_s]  
        end
      end
    end
  end

  pigeon_list
end