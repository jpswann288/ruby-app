module ApplicationHelper

  def gravatar_for(user, options = { size: 80} )
    email_address = user.email.downcase
    hash = Digest::SHA256.hexdigest(email_address)
    default = user.username
    size = options[:size]
    params = URI.encode_www_form('d' => default, 's' => size)
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?#{params}"
    image_tag(gravatar_url, alt: default, class: "rounded-circle shadow mx-auto d-block")
  end
end
