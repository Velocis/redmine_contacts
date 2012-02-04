class ContactsController < ApplicationController
  
  def index
    @users = User.active.all(:order => "firstname,lastname")
    @fields = UserCustomField.find(Setting.plugin_redmine_contacts[:contact_fields])
  end

end
