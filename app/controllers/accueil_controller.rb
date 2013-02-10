class AccueilController < ApplicationController
  def index
  end
  
  def download
    # Récup le chemin du fichier à partir de l'id
 
    # Recherche du type mime à envoyer au client.
    extension = File.extname(filename)[1..-1]
    mime_type = Mime::Type.lookup_by_extension(extension)
    content_type = mime_type.to_s unless mime_type.nil?
 
    # Envoi du fichier au client
    send_file(filePath, :disposition => "attachment", :type => content_type)
  end

end
