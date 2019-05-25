module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_use
  end

  def guest_use
    OpenStruct.new(name: "Guest",
                   first_name: "Guest",
                   last_name: "User",
                   email: "guest@example.com"
    )
  end
end