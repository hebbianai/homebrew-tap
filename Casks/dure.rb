cask "dure" do
  version "0.2.69"
  sha256 "ab8404632be497c71b97a155a478118f99d9b95baf9bc1f09170630c2e2d4f17"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
