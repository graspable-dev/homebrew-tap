cask "grasp" do
  arch arm: "arm64", intel: "x64"
  version "0.17.5"
  sha256 arm: "400223c486abc95524afc55817d55ebaf6a5b639055dd09979b83e1bc1dda696", intel: "b4a2390d1273e923fd3a558269cfc393f5fcfcf256974665d0db57df96f10011"
  url "https://downloads.graspable.dev/releases/#{version}/grasp-#{version}-darwin-#{arch}.tar.gz", verified: "downloads.graspable.dev/"
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
