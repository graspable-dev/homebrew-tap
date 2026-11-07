cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.4"
  sha256 arm:   "de6813567d3391bb0a250e62118e4d4f03dcfccac905a38cd1a8c5f49ecfbec0",
         intel: "98bd1104f295ed2aeacf846ef693b416ac04ab2c93462df00483ed5abf639017"

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
