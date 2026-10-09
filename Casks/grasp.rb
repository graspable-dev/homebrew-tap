cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "76ff983f282568ec6b05225de622756db81231e3a6f6e8fbb54d66d3e77da58d",
         intel: "23e8e6f42ddce71ec9c17fe19694f5e8e958421f09484dfc4da4905fc57a6027"

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
