class ListSerializer < ActiveModel::Serializer
  attributes :name, :items


  def items
    object.items.map do |item|
      ItemSerializer.new(item).attributes
    end
  end

end
