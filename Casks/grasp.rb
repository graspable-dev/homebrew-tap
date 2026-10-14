cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "900868e58de75ab91d69a0fada94d8bd291ab38b6b349d5a3aeee8742b2eed5f",
         intel: "1beaaad11bf943818bc1b91b928c9f1d5a72096c66d9db89c8c2fdabdcc3ae99"

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
