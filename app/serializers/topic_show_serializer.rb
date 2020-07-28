class TopicShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :links

  def links 
    self.object.links.map do |link|
      {id: link.id,
       name: link.name,
       url: link.url,
       category: link.category,
       section: link.section,
       language: link.language,
       blurb: link.blurb,
    #    comments: link.comments
    }
    end
  end
end
