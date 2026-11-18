cask "dure" do
  version "0.2.68"
  sha256 "96937b58891d01c65ae2b1e1510f726f24ff65d612d0a5443c4b4f2dce6d9c75"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
