cask "dure" do
  version "0.2.71"
  sha256 "38c2f2f20ab4d321dd0f31600399e8704fc4d2b713a2ee5d1769e4a1c9f49ab7"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
