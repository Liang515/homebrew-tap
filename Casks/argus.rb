cask "argus" do
  version "0.1.29"
  sha256 "c78aee7d93f9e2fbb6726e29f7331fd81703609224190dac5b64ef8a73c60e84"

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
