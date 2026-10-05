cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.10.6"
  sha256 arm:   "c7a143091361c4900ca8e4f68b06d6ee4cbebb15133795de4b6c913458dc272c",
         intel: "1e8e2e3f5433232e30d1486d892c4d889c00edfd39a29a20d72399542f891380"

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
