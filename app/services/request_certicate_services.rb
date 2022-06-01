module Services
  class RequestCertificateServices
    attr_reader :link

    def initialize(link)
      @link = link
    end

    def call
      find_certificate
    rescue StandardError => e
      capture_exception(e)
      historic.errors.add(:base, e.message)
      historic
    end

    private

    def find_certificate
      Certificate.where "link like ?", "%#{@link}%"
    end

    def capture_exception(error)
      Notifiers::IssueTracker.capture_exception(error, params: params)
    end
  end
end