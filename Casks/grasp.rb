cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.2"
  sha256 arm:   "fc2e39fe24b14f7ee17e92472ca82356f3d4dd0057db8be9b6a642e70325eaca",
         intel: "039e6f457a224137acabe3fa03e7a21a66c820d0f40085e0f8cd8d0215591e15"

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
