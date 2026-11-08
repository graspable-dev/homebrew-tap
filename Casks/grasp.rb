cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.6"
  sha256 arm:   "925a1d42f8d16ac7108613f6b0f3f35a5fbefd0658f76a77c6218180b9c1899b",
         intel: "9038cc53e6a18bcef12d4b4cb544f556704784a791c5513f40ebe116572bc104"

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
