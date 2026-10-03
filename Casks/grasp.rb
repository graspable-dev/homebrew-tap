cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.48"
  sha256 arm:   "e7c4643f9117c5ca2f7149f5668302535a1c9c6e14bf8f8d6b38c1c335a87c9e",
         intel: "73f44528a6d8a3c35f5d05021f5a33d7d1ff69fbfbf73b934245a5289be6825f"

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
