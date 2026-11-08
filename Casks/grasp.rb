cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.5"
  sha256 arm:   "6225c848aad7b3cf3c2601396c718c2222dd869d49599204c4832629d3494e00",
         intel: "18898a9073387779ad26accd8cbd21d9be19067c558e1d597acd0825db94e7bf"

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
