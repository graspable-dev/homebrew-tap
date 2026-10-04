cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.56"
  sha256 arm:   "4ab61e36c38580eb4547ed7659c025ff59615a0e86b560f4e8abd7f8a8b3b89d",
         intel: "d366ce50a5b511d16fb22a0ecce4d77879991c4f40865a890021ad23b90c9154"

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
