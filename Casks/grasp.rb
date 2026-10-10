cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.10"
  sha256 arm:   "d63d3650ab10ff51bce7fcf28441738e710a7960fa811d5ae8788e029dfc0a79",
         intel: "a086a7fb43569c932466f59fd4ee233c2a302761a9c34e04bb0c96d5eae029ab"

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
