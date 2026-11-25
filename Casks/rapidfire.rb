cask "rapidfire" do
  version "1.0.7"
  sha256 "2fd41033ceae6f49e156e0e4dd3142aaa5a85be8a311906031e4b1c636849216"

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
