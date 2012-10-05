class YbkGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :ybk_name,:type=>:string,:default=>'application'

  def generate_ybk
  copy_file 'test_controller.rb', 'app/controllers/test_controller.rb'
  empty_directory "app/views/test"
  copy_file 'index.html.erb','app/views/test/index.html.erb'
  insert_into_file "config/routes.rb", "match 'test/index'=>'test#index' \n", :after => "Application.routes.draw do\n"
  end
end
