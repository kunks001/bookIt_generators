class BookingsViewsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_bookings_views
    # copy_file "stylesheet.css", "public/stylesheets/#{file_name}.css" if options.stylesheet?
    template "_errors.html.erb", "app/views/bookings/_errors.html.erb"
    template "_form.html.erb", "app/views/bookings/_form.html.erb"
    template "edit.html.erb", "app/views/bookings/edit.html.erb"
    template "index.html.erb", "app/views/bookings/index.html.erb"
    template "new.html.erb", "app/views/bookings/new.html.erb"
    template "show.html.erb", "app/views/bookings/show.html.erb"

    template "custom.js", "app/assets/javascripts/custom.js"
    template "fullcalendar.js", "app/assets/javascripts/fullcalendar.js"
    template "calendar-editable.js", "app/assets/javascripts/calendar-editable.js"

    template "custom.css", "app/assets/stylesheets/custom.css"
    template "fullcalendar.css", "app/assets/stylesheets/fullcalendar.css"
  end
end
