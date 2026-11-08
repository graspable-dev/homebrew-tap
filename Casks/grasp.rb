cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.9"
  sha256 arm:   "131e79230f605a5c2b09c2cc4a3aa4234b6d052e4042d9966587d09f5e8d9bd9",
         intel: "52ab4c89492fe353600a8eb7bde278a76dc0f068f334da026e22006264f8a698"

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
