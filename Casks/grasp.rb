cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "eecf718cb8a45eb6292f35545c9e671f21883b250e4f1e33224b09325b5bcdac",
         intel: "ff3331961584496e2acffdef899debde70437106febeb4918341a807b6ebfe62"

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
