unless Rails.env.production?
  Flunk.config.header "CONTENT_TYPE", "application/json"
  Flunk.config.header "ACCEPT", "application/json"
  Flunk.config.username "username"
  Flunk.config.password "password"
  Flunk.config.doc_directory "docs/flunk"
end
