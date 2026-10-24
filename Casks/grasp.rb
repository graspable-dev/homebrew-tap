cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.4"
  sha256 arm:   "fdd58cfec68593d3ccc92172427775cae10db45ab9d4a80f544a8ac94d7cf40b",
         intel: "17cdcae5dadddc06f662e81238f0c6ad1ddfdd94845b4d355c4a171a950ca035"

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
