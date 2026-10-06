cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "eee3d710dde3dbd1b4f862d83ccf1db193daf5a0902ac6256272b617871c91a8",
         intel: "b07b985a48d3adf33328a3178b2110a088cbe6db2032c3f720fc4107e733d068"

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
