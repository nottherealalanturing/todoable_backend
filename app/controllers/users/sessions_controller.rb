class Users::SessionsController < Devise::SessionsController
    respond_to :json
    private
    def respond_with(resource, _opts = {})
        render json: {
            message: 'You\'re logged in.',
            user: current_user
        },
        status: :ok
    end

    def respond_to_on_destroy
        log_out_success && return if current_user
        
        log_out_failure
    end


    def log_out_success
        render json: {
            message: 'You\'re logged out.',
        },
        status: :accepted
    end

    def log_out_failure
        render json: {
            message: 'Something went wrong, try again.',
            errors: resource.errors
        },
        status: :expectation_failed
    end
end