class CreateLink
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def call
    Link.create(params.merge(token: self.class.generate_token))
  end

  def self.generate_token
    SecureRandom.urlsafe_base64(10)
  end
end
