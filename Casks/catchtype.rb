cask "catchtype" do
  version "0.3.0-beta.26"
  sha256 "44ea7d2eb010883a410aac8d5befa484fde4fbe81b6b80d453dd408e217f4195"

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
    Catchtype needs a macOS permission to fix keys typed into other apps.
    Open Catchtype once, then turn it on in
      System Settings > Privacy & Security > Device Control and Data Access (macOS 27)
    or, on macOS 26 and earlier, in
      System Settings > Privacy & Security > Accessibility
  EOS
end
