cask "dure" do
  version "0.2.73"
  sha256 "2956711472fc91ce4dab43c07b391f12a5e7186028d039855b06a7ea379d836e"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
