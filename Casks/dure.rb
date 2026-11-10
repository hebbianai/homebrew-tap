cask "dure" do
  version "0.2.62"
  sha256 "2348102f44cccad26567f1a177f413ce4fc73e0d65c6a2c9b4962240708d5226"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
