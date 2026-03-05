class Vajax < Formula
  include Language::Python::Virtualenv

  desc "GPU-accelerated analog circuit simulator with Verilog-A support"
  homepage "https://github.com/ChipFlow/vajax"
  url "https://files.pythonhosted.org/packages/source/v/vajax/vajax-0.1.5.tar.gz"
  sha256 "979678bb0db1543a1d70e5239aa9de1e9e035b787ac9d9cef591a7d1df2fd2de"
  license "Apache-2.0"

  depends_on "python@3.12"
  depends_on "suite-sparse"  # UMFPACK for sparse solver

  # Core dependencies installed from PyPI wheels
  # vajax, openvaf-py, osdi-py, umfpack-jax all have pre-built wheels

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"vajax", "--version"
    system bin/"vajax", "info"
  end
end
