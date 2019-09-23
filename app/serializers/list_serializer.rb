class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :items


  def items
    object.items.map do |item|
      ItemSerializer.new(item).attributes
    end
  end

end
