cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.13.2"
  sha256 arm:   "b0b1395e007815354200f5f06f452096526a2e757157b1c7d52030caa4dd91e6",
         intel: "bda1633e369deb69cad26e91738db8e5785f33aa4d43dd58b12f91240ad55d6b"

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
