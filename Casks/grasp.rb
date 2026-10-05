cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.10.4"
  sha256 arm:   "a924c7584f845c6a49c3a31b721f99cde2f68853b99b508eb47d97542fb6e6d7",
         intel: "198aacf38c7bc45eeb812bfc5d23b3e3dd17460efde8b658cdc51fa5299fe0df"

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
