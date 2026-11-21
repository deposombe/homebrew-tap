cask "rapidfire" do
  version "1.0.3"
  sha256 "3d11bcaf0ad7808f3ca3fd0444dd8de63c8c7c24d363cd67fba0d0b7fd7c58b5"

  url "https://github.com/deposombe/Rapidfire-releases/releases/download/v#{version}/Rapidfire-#{version}.dmg"
  name "Rapidfire"
  desc "Keyboard launcher for links, apps and files"
  homepage "https://deposombe.com/rapidfire/"

  livecheck do
    url "https://deposombe.com/rapidfire/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Rapidfire.app"

  zap trash: [
    "~/Library/Application Scripts/com.deposombe.RapidfireLauncher",
    "~/Library/Containers/com.deposombe.RapidfireLauncher",
  ]
end
