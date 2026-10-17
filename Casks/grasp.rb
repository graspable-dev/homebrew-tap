cask "grasp" do
  arch arm: "arm64", intel: "x64"
  version "0.17.4"
  sha256 arm: "a916bb3213a3172e2693369976f69598801bfe4f86b783ecee4c4a7dc9818a02", intel: "9a8aaeef1fb1db3d50623241ce2a2550f3ae3a7bccef08efbfccf5e7c6b0ff33"
  url "https://downloads.graspable.dev/releases/#{version}/grasp-#{version}-darwin-#{arch}.tar.gz", verified: "downloads.graspable.dev/"
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
