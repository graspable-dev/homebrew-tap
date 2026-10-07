cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.15.7"
  sha256 arm:   "f6b56fb725e4dfc55a469d0c9769bab0e4cebfb069afea03b26ccd57f195cf03",
         intel: "e8e1e09d89cb495c356fdfa7140a90e9c6ce2eed75f1a9a5ee887c5bb80e90b0"

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
