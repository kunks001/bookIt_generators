class ResourcesViewsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  argument :resources_views_name, :type => :string, :default => "resources"
  
  def generate_resources_views
    template "_errors.html.erb", "app/views/#{folder_name}/_errors.html.erb"
    template "_form.html.erb", "app/views/#{folder_name}/_form.html.erb"
    template "edit.html.erb", "app/views/#{folder_name}/edit.html.erb"
    template "index.html.erb", "app/views/#{folder_name}/index.html.erb"
    template "new.html.erb", "app/views/#{folder_name}/new.html.erb"
  end
  
  private

    def folder_name
      resources_views_name.underscore
    end
end
