cask "rapidfire" do
  version "1.0.8"
  sha256 "e9cd2cfbf873f5ec70eb86cc95936ef9dd77d5be956b7a00c350e2a663c2c9eb"

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
