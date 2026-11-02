cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "b603dcc765f3f9a1ca23cc5eec51b2eadf9b9a1f98c21214817a8d68402a47fe",
         intel: "3f922f1cdc7f4b19d611b999dadadac3f68181c24024fb5e0b10a584991df183"

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
