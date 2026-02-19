class BubbleBot < Formula
  version "0.0.2"

  desc "Ephemeral containers for AI agents"
  homepage "https://github.com/hostingaccessories/bubble-bot"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/hostingaccessories/bubble-bot/releases/download/v#{version}/bubble-bot-aarch64-apple-darwin.tar.gz"
    sha256 "cf5bac462a32e505eab79f75eaaca069c32ea49e9c662eb142834bc122886256"
  end

  on_intel do
    url "https://github.com/hostingaccessories/bubble-bot/releases/download/v#{version}/bubble-bot-x86_64-apple-darwin.tar.gz"
    sha256 "368692a68133680514c36a3692c5e117f741df364e929d990b93b86bb2ddc084"
  end

  def install
    bin.install "bubble-bot"
    man1.install "man/man1/bubble-bot.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/bubble-bot --version")
  end
end
