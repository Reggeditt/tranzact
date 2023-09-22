class User::RegistrationsController < Devise::RegistrationsController
    def new
      build_resource({})
      yield resource if block_given?
      respond_with resource
    end
    protected

    def after_sign_in_path_for(resource)
      categories_path
    end
end
