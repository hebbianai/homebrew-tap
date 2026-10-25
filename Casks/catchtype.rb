cask "catchtype" do
  version "0.3.0-beta.11"
  sha256 "77d12c6eafdd09b92076b27f186695c50c34e9c64d1fdfceffa05a6e9da00cbf"

  url "https://catchtype.com/download/Catchtype-#{version}.dmg"
  name "Catchtype"
  name "캐치타입"
  desc "Switches between Korean and English input automatically as you type"
  homepage "https://catchtype.com/"

  livecheck do
    url "https://catchtype.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Catchtype.app"

  uninstall quit: "com.hebbianai.catchtype"

  zap trash: [
    "~/Library/Caches/com.hebbianai.catchtype",
    "~/Library/HTTPStorages/com.hebbianai.catchtype",
    "~/Library/HTTPStorages/com.hebbianai.catchtype.binarycookies",
    "~/Library/Logs/Catchtype",
    "~/Library/Preferences/com.hebbianai.catchtype.plist",
  ]

  caveats <<~EOS
    Catchtype needs Accessibility permission to fix keys typed into other apps.
    Open Catchtype once, then turn it on in
      System Settings > Privacy & Security > Accessibility
  EOS
end
