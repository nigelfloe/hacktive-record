class Artist < HacktiveRecord::Base
  attr_accessor :id, :name

  def self.columns
    DB.table_info(table_name).map {|field| field["name"].to_sym}
  end
  def self.new_from_row(row)
    a = new
    a.id = row["id"]
    a.name = row["name"]
    a
  end

  def attribute_methods
    [:name]
  end
end
