class LinkSerializer < ActiveModel::Serializer
  attributes :id, :topic_id, :name, :url, :category, :section, :language, :blurb, :comments
end
