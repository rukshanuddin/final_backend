class LinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :category, :section, :language, :blurb, :comments
end
