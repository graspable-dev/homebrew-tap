cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.7"
  sha256 arm:   "281520cf836b32d88154ff23dd199048152b5d24aaca8fe03546d99f20ec5fff",
         intel: "3501e81df9691f11039039e84c30c194a18dd6f20f977cdfd990e72b8c40e430"

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
