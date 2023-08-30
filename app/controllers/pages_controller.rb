class PagesController < ApplicationController
  before_action :authenticate_user!, only:[:users], unless: :admin_signed_in?
  before_action :authenticate_admin!, only:[:admin]
  def home
  end

  def users

  end

  def admin
  end
  def process_form
    # Handle the form submission here if needed.
    # You can access the selected checkboxes via params[:options].

    # Redirect to the message page
    redirect_to message_path(options: params[:options])
  end

  def message
    @selected_options = params[:options] || []
  end
end
