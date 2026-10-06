cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "1b531434e483400c374d1428b3729960df7319db2b3694c354152f87c0d4b4d1",
         intel: "0f158f3022758e48cbfc54f4a474b2e1ded5de22878ec1e74eb2d1587e1074ab"

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
