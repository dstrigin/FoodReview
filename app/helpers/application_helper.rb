module ApplicationHelper
  def asset_exists?(path)
    Rails.application.assets.find_asset(path).present? || File.exist?(Rails.root.join("app/assets/images", path))
  end
end
