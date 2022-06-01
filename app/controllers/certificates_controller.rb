class CertificatesController < ApplicationController
  def index
    @certificates = Certificate.order :url
  end

  def find
    @url = params[:url]
    @certificates = Certificate.where "url like ?", "%#{@url}%"
    # certificate_ids = @certificates.ids
    
    # certificate_ids.each do |id|
    #   Historic.create!(certificate_id: id)
    # end
  end
end
