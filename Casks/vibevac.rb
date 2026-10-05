cask "vibevac" do
  version "0.2.0"
  sha256 "7203a4c2298dc2a7363d838379b7623c47c77fb02240f134dc0869aac59d1bae"

  url "https://github.com/TargiX/vibevac/releases/download/v#{version}/VibeVac_#{version}_universal.dmg"
  name "VibeVac"
  desc "Reclaim rebuildable storage from AI coding workspaces and Git worktrees"
  homepage "https://github.com/TargiX/vibevac"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: :monterey

  app "VibeVac.app"

  zap trash: [
    "~/.vibevac",
    "~/Library/Application Support/com.ilyamoskovkin.vibevac",
    "~/Library/Caches/com.ilyamoskovkin.vibevac",
    "~/Library/Saved Application State/com.ilyamoskovkin.vibevac.savedState",
    "~/Library/WebKit/com.ilyamoskovkin.vibevac",
  ]
end
