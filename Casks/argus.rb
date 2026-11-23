cask "argus" do
  version "0.1.20"
  sha256 "2b00fc59a7121b693a8c944b2df4997d081bb4464a2e62a6aa3b67d82dc868bf"

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
