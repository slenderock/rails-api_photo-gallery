class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url, :category, :caption
end
