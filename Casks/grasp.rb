cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.59"
  sha256 arm:   "068fef30e3d00d7ea83ae8808412e61c273c87fd02013fd87898dab8dbc7d2a8",
         intel: "e3c33e8e610d22c16b821789505abbc93c5312d79c8983bf670f990ded8c1b46"

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
