require 'redmine'

Redmine::Plugin.register :redmine_contacts do
  name 'Contacts'
  author 'Rocco Stanzione'
  description 'A Redmine plugin to add user contact info and associated features'
  version '0.0.1'
  url 'https://github.com/Velocis/redmine_contacts'
  author_url 'https://github.com/trappist'

  # This plugin contains settings
  settings :default => {
    'contact_fields' => []
  }, :partial => 'settings/contact_settings'

  # Add to the menu
  menu :top_menu, :contacts, '/contacts',
    :caption => "Contacts",
    :before  => :help
end
