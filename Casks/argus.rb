cask "argus" do
  version "0.1.27"
  sha256 "4687e8fa34e612c4d342623f79816f84aa60bc18a2b8403a5335b14a8155bc36"

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
