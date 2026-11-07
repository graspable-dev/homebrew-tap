cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.3"
  sha256 arm:   "424a670866c7a884e35d0d770d03b23e5ae9458c2edc658c15ff2d28e297f918",
         intel: "44b162adac0b8c9265918e50eb9f82ee99a11af4ca4ace02598e34294c2d9478"

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
