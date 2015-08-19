require_relative "entry.rb"

class AddressBook
  attr_accessor :entries

  def initialize(entries=[])
    @entries = entries
  end

  def add_entry(name, phone, email)

    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end

  def remove_entry(name, phone, email)

    @entries.each do |entry|
      index_val = 1
      if entry.name == name
        if entry.phone_number == phone
          if entry.email == email
            @entries.delete_at(index_val)
          end
        end
      end
      index_val += 1
    end
  end

end

