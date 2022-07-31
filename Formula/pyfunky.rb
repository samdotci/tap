class Pyfunky < Formula
  include Language::Python::Virtualenv

  desc "Funky takes shell functions to the next level by making them easier to define, more flexible, and more interactive."
  homepage "https://github.com/bbugyi200/funky"
  # url "https://files.pythonhosted.org/packages/9a/53/add438dacb5f1da4f546a1907b1a310d7c719fc146169ade9ebd10c5bce0/pyfunky-3.5.5.tar.gz"
  # sha256 "644a7a7e6cb2d6d419d74d39effbf305fe1acbc2d9caafbb23dfcaee86b3a615"
  head "https://github.com/bbugyi200/funky.git", branch: "master"

  depends_on "python3"

  resource "future" do
    url "https://files.pythonhosted.org/packages/45/0b/38b06fd9b92dc2b68d58b75f900e97884c45bedd2ff83203d933cf5851c9/future-0.18.2.tar.gz"
    sha256 "b1bead90b70cf6ec3f0710ae53a525360fa360d306a86583adc6bf83a4db537d"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/59/0f/eb10576eb73b5857bc22610cdfc59e424ced4004fe7132c8f2af2cc168d3/Pygments-2.12.0.tar.gz"
    sha256 "5eb116118f9612ff1ee89ac96437bb6b49e8f04d8a13b514ba26f620208e26eb"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    system bin / "funky", "-h"
  end
end
