cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.17.2"
  sha256 arm:   "c20edc2454d7c8b1aea8f099a843a2204b5ad788d963569d920bd676a7a3376e",
         intel: "b51ab0e74197f29ccd3514c85a9da57a3da78f5e615d04eabc9aea48ca41364b"

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
