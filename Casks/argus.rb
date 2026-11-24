cask "argus" do
  version "0.1.23"
  sha256 "975d4ab3b8feb8f292920adb5a5c84a974a2275ca695d8ea488432746eea5e4a"

  url "https://github.com/Liang515/argus/releases/download/v#{version}/Argus_#{version}_universal.dmg"
  name "Argus"
  desc "Terminal workspace for coding agents (Claude Code, agy, Codex)"
  homepage "https://github.com/Liang515/argus"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Argus updates itself from inside the app
  auto_updates true
  depends_on :macos

  app "Argus.app"

  zap trash: [
    "~/.argus",
    "~/.gemini/config/plugins/argus",
    "~/Library/Caches/io.github.liang515.argus",
    "~/Library/WebKit/io.github.liang515.argus",
  ]
end
