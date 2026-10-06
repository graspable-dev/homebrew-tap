cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "32fb6fbdde9a29b8a22fd52a48a371ff9f686f724f2eada460491e8a406f358e",
         intel: "75e65831e72de886ee20dd70f673578d03d092b4f0bb99b246f9da504855cf73"

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
