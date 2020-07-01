def nyc_pigeon_organizer(data)
  pigeon_list = { }
  attributes = { }
  pigeon_name =[ ]
  data.each { |key, value|
    attributes.store(key, [])
      value.each { |inner_key,inner_value|
      inner_value.each {|name|
         pigeon_name.push(name)
          pigeon_list.store(name,attributes)
        }
      if inner_value.include? pigeon_name
      attributes[key].push(inner_key.to_s)
    end
      }
    }
pigeon_name

end
nyc_pigeon_organizer(pigeon_data)