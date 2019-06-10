module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_use
  end

  def guest_use
    guest = GuestUser.new
    guest.name = "Guest"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end