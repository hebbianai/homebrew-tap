cask "dure" do
  version "0.2.63"
  sha256 "51bcde20b63793d6fd31aa533d48301a885738664e3f7014cabfe864c603a5ff"

  url "https://github.com/hebbianai/dure/releases/download/v#{version}/Dure_#{version}_aarch64.dmg"
  name "Dure"
  desc "Workspace for AI coding agents"
  homepage "https://www.dureai.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Dure.app"
end
