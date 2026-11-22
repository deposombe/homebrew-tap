cask "rapidfire" do
  version "1.0.4"
  sha256 "ab07fba3a2979f169a7d27617ea1a8b37e061d1aa07f5522d66084110d04b224"

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
