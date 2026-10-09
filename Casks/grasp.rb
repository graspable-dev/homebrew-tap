cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "f70b54f32ffeefe1c6f673d84ec6bb10258a5999d29979e02eac7da54de3be33",
         intel: "bb8e4ac751e0c52ffc0a0a54be02d5b9d83f069b1dfff1b8f7b5e3e6a3c3d5cf"

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
