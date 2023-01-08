class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
    private
    def respond_with(resource, _opts = {})
        register_success && return if resource.persisted?
        
        register_failed
    end

    def register_success
        render json: {
            message: 'Account Created.',
            user: current_user
        },
        status: :created
    end


    def register_failed
        render json: {
            message: 'Couldn\'t create account.',
            errors: resource.errors
        },
        status: :unprocessable_entity
    end
end