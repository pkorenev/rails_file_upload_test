class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  before_action do
    @pure_html_form = true
  end

  def file_upload
    h = {}
    h[:attachment] = params[:filename]
    puts "params: #{h.inspect}"
    params[:one_c_log][:attachment] = params["filename"]
    @log = OneCLog.create(h)

    if @pure_html_form
      render "pure_html_form"
    else
      render "file_upload_form"
    end

  end

  def file_upload_form
    @log = OneCLog.new

    if @pure_html_form
      render "pure_html_form"
    end
  end
end
