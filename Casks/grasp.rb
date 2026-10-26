cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.6"
  sha256 arm:   "5fc83f1f8b99cfc30ba5326685dcccb0fbf9be5649dbfe1e51bafa174eecfeee",
         intel: "36d85ea7948dc47d821db86f2bb585f3337c81f27c4f1c155b7d962984fde680"

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
