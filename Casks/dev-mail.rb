cask "dev-mail" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/hostingaccessories/dev-mail.app/releases/download/v#{version}/DevMail-#{version}.zip"
  name "Dev Mail"
  desc "Local SMTP server that catches and displays email during development"
  homepage "https://github.com/hostingaccessories/dev-mail.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Dev Mail.app"

  zap trash: [
    "~/Library/Application Support/Dev Mail",
    "~/Library/Caches/com.hostingaccessories.DevMail",
    "~/Library/HTTPStorages/com.hostingaccessories.DevMail",
    "~/Library/Preferences/com.hostingaccessories.DevMail.plist",
    "~/Library/Saved Application State/com.hostingaccessories.DevMail.savedState",
    "~/Library/WebKit/com.hostingaccessories.DevMail",
  ]
end
