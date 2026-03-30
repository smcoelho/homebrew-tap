cask "lapin-browser" do
  version "1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/smcoelho/lapin-browser/releases/download/v#{version}/LapinBrowser-#{version}.zip"
  name "Lapin Browser"
  desc "macOS menu bar app that routes URLs to browser profiles"
  homepage "https://github.com/smcoelho/lapin-browser"

  depends_on macos: ">= :ventura"

  app "LapinBrowser.app"

  caveats <<~EOS
    Lapin Browser is signed ad-hoc (not notarized).
    After installation (and after each upgrade), run:

      xattr -cr /Applications/LapinBrowser.app

    Then open it from Spotlight or Finder.
  EOS
end
