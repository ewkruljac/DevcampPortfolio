class ApplicationController < ActionController::Base
  include DeviseWhitelistConcern
  include SetSourceConcern
  include CurrentUserConcern
  include DefaultPageContentConcern


end
