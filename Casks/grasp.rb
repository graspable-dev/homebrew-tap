cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "cbcf03b747a72d65c2490accb890f6d7842177ef60390cbd745ded70c2e31318",
         intel: "52c027bc583378a69416c094f81cd6323a9a8d1ea4e9031878fd5f00c5482b44"

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
