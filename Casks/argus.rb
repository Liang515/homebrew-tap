cask "argus" do
  version "0.1.21"
  sha256 "e35f0fab61259a67b5a83e276c6ce1f8d6ac2a5a0d76c1bedc82b9f39343b8bf"

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
