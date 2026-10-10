cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.6"
  sha256 arm:   "71efeca8dda9b3ca3c4c9671e02e06a8299ef079c7fd6053ce7ce4dfda7f9445",
         intel: "bb53b681671dfe201cc6b929cb5c85db55f0018b89a66ff15049b8e5deb693e1"

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
