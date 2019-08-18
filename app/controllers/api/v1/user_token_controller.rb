class Api::V1::UserTokenController < Knock::AuthTokenController
    # this is to fix 442 code
    skip_before_action :verify_authenticity_token

end
