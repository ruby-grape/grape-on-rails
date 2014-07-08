api_dir="#{Rails.root}/app/api"
file_ext='rb'

api_files = Dir["#{api_dir}/**/*.#{file_ext}"]

api_reloader = ActiveSupport::FileUpdateChecker.new(api_files, {api_dir => file_ext}) do
  Rails.logger.info 'Reload routes for changed api files'
  Rails.application.reload_routes!
end

ActionDispatch::Reloader.to_prepare do
  api_reloader.execute_if_updated
end
