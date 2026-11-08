cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.8"
  sha256 arm:   "ed6a15d70e9c02d74b3ef81da635d62eb3bc144c9393bfee57aa184231137b48",
         intel: "26b20d7d62841ec1943d47bd088d2ddc3612312c12ec544b9bac653204a6df88"

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
