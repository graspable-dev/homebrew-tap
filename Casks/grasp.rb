cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.21.3"
  sha256 arm:   "d1267f29bbe3d5e47a7df6cf6b233b11077ea1d020eb85358e8f4cd8bace05bb",
         intel: "09d2d056b38309fe8f654088a096082b4936ef6a9dd8f77929ef525890f7b36e"

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
