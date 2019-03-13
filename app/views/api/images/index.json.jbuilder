json.array! @images.each do |image|
  json.partial! "image.json.jbuilder", images: image
end