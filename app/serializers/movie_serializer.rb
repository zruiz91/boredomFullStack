class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :director, :description, :runtime, :image
end
