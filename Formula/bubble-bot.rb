class BubbleBot < Formula
  version "0.0.1"

  desc "Ephemeral containers for AI agents"
  homepage "https://github.com/hostingaccessories/bubble-bot"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/hostingaccessories/bubble-bot/releases/download/v#{version}/bubble-bot-aarch64-apple-darwin.tar.gz"
    sha256 "b36f070db9858472fa67de0b1b5b173b7b67359f07e4e11e708d577637930a91"
  end

  on_intel do
    url "https://github.com/hostingaccessories/bubble-bot/releases/download/v#{version}/bubble-bot-x86_64-apple-darwin.tar.gz"
    sha256 "1699be2aec5cfba7a546113b29d2b99b133f4e773eb6cdcda44f7151a3573c47"
  end

  def install
    bin.install "bubble-bot"
    man1.install "man/man1/bubble-bot.1"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/bubble-bot --version")
  end
end
