module ApplicationHelper
  def asset_exists_with_fingerprint?(base_path, pseudonym, extension)
    Dir.glob(Rails.root.join(base_path, "#{pseudonym}-*.#{extension}")).any?
  end
end
