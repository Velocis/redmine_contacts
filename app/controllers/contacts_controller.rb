class ContactsController < ApplicationController
  
  def index
    @users = User.active.all(:conditions => "type != 'AnonymousUser'")
    @fields = UserCustomField.find(Setting.plugin_redmine_contacts[:contact_fields])
  end

end
