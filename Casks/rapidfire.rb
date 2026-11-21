cask "rapidfire" do
  version "1.0"
  sha256 "8b59ad95c2740e8b741a694680c3088d97349de4c9fe759f5ab9a0a8c9e71032"

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
