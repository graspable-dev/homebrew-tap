cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "5d5a245ff9d0959f816bf969a19ec111dcc5cff615356982fdf7998a53642c01",
         intel: "3571058f6e4ea4ac34836882cc51df6b24664a3b04613f048abcd2a7d1484ce3"

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
