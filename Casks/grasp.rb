cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.42"
  sha256 arm:   "642fe3550a1295b013b70bb7036dd70503b26784d4edb0bcd539d528b585ad27",
         intel: "347c4132ffd84849ea6e68b459f4d389c20d2b26e3f95cdb6c317f4c2c261211"

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
