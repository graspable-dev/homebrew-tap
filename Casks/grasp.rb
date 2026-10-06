cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "7d643edd29df74ef5e41e19079d4fa153775dda73dbb6986a8161019f95bb781",
         intel: "dcd509d945fe3684fcfa1a925b8a391d7be454cff22a4b01ad743599a1836b00"

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
