cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.9"
  sha256 arm:   "9ec4fdc4868ca9c3ab2841d3dd96f4c4903b27506fa17521f149012f20e596a3",
         intel: "c270da945123a6d20cb42377909aaeb6d83d2d7c7c2d448b674bdcab68973d4a"

  url "https://downloads.graspable.dev/releases/#{version}/grasp-#{version}-darwin-#{arch}.tar.gz",
      verified: "downloads.graspable.dev/"
  name "grasp"
  desc "Build WebXR and 3D projects with Graspable from the command-line"
  homepage "https://graspable.dev/docs/cli"

  livecheck do
    url "https://downloads.graspable.dev/grasp/latest.txt"
    regex(/\A(\d+(?:\.\d+)+)$/i)
  end

  binary "grasp/grasp"

  zap trash: "~/.graspable/cli"
end
