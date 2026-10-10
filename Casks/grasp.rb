cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.9"
  sha256 arm:   "a6e6c489e72c5ecf848507641be43fe0851889896deebbfafe29a209262c252b",
         intel: "1965ff7bbf99e97f19eb925ef1a921ec7afe7cc9382e7056326c609375999121"

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
