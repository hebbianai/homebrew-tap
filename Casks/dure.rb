cask "dure" do
  version "0.2.70"
  sha256 "d1b87b164cf2735a983df80262dfeecb17e74073f6cfa943f265abbc948c0b0b"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
