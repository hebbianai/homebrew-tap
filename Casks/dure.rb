cask "dure" do
  version "0.2.72"
  sha256 "d494811ec15057e581554dd9f1a11e1449c9cd3af80d318d36993b33106510e4"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
