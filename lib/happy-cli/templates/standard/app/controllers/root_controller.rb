class RootController < Happy::Controller
  set :views, './app/views'

  def route
    setup_permissions

    # Handle sub-paths here. For example:
    #
    # path 'info' do
    #   render 'info.erb'
    # end
    #
    # Paths can be captured as parameters:
    #
    # path 'hello-:name' do
    #   "Hallo, #{params['name']}!"
    # end
    #
    # This is the default response:
    render 'home.erb'
  end

  def setup_permissions
    # You can use the "can" variable to declare runtime
    # permissions. Examples:
    #
    # can.login!
    #
    # if current_user.admin?
    #   can.edit!
    # end
  end
end
