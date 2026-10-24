cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.2"
  sha256 arm:   "1c956d3e1c7d09ad04018648c5991c5154a2775c98f57633e8b801c03819f40c",
         intel: "98238e5b592ade330c74b6aaba10bee37932b791b74c9d43828308fc0cf9c1b8"

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
