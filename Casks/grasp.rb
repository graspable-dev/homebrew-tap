cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "5212e8c644b1c2b44652106c10940ea05f2d87560cf99604382aebf0a5ff20f2",
         intel: "4686c963ff53e398367882f48b345c55e7f523aa866cb2b245b734606b2a53f3"

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
