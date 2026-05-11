cask "lapin-browser" do
  version "1.1"
  sha256 "48c14de96b044095100b16bd0babe9834cce96041542d478049a79215e93e89f"

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
