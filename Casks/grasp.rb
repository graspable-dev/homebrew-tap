cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.7"
  sha256 arm:   "d8d92b627e549fd0d4b3435de4275f37f3b0ced10f9079c0169dae5385d9bbbb",
         intel: "0d9edf7edbdd23c1b4f0fd545d0838e2ecbc043aa19a55ede86d483db23a077f"

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
