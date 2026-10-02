cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.35"
  sha256 arm:   "9837c4b2b501b8a948b29f092974d8a8e94bb7701181ecc8096bec96ee3c3900",
         intel: "38e617c1fb39744a573436a30c4af0091f50396762f9e69f63f881a20a86a136"

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
