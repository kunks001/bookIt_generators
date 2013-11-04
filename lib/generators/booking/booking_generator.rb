class BookingGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :model_name, type: :string, default: 'booking'

  def generate_model_controller
    template "booking_controller.rb", "app/controllers/#{file_name}_controller.rb"
    route "resources :resources do\n" \
          "\t  resources :#{file_name}s\n" \
          "\tend"
  end

  private

    def file_name
      model_name.underscore
    end
end