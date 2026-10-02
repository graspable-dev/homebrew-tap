cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.36"
  sha256 arm:   "e8dcf3314590ccc1937057350f1fbf7768650f3299bf182d3e126be390d2207d",
         intel: "d77663f22556a9807d830669f1acb3f7b978f627444649798fb57574bf3d4e93"

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
