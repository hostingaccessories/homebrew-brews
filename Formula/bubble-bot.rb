class BubbleBot < Formula
  version "0.1.0"

  desc "Ephemeral containers for AI agents"
  homepage "https://github.com/hostingaccessories/bubble-bot"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/hostingaccessories/bubble-bot/releases/download/v#{version}/bubble-bot-aarch64-apple-darwin.tar.gz"
    sha256 "TODO"
  end

  on_intel do
    url "https://github.com/hostingaccessories/bubble-bot/releases/download/v#{version}/bubble-bot-x86_64-apple-darwin.tar.gz"
    sha256 "TODO"
  end

  def install
    bin.install "bubble-bot"
    man1.install "man/man1/bubble-bot.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/bubble-bot --version")
  end
end
