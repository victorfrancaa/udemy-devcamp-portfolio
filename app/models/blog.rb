class Blog < ApplicationRecord
  enum status: { draft: 0, publshed: 1}
end
