defmodule PhoenixSimpleForm.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_simple_form,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:phoenix_html, ">= 2.4.0"}]
  end

  defp package do
    [
      maintainers: ["Sascha Brink"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sbrink/phoenix_simple_form"}
    ]
  end
end
