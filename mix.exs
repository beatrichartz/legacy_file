defmodule LegacyFile.Mixfile do
  use Mix.Project

  def project do
    [
      app: :legacy_file,
      version: "0.1.0",
      elixir: "~> 1.1",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      docs: &docs/0,
      name: "LegacyFile",
      source_url: "https://github.com/beatrichartz/legacy_file",
      description: "Tooling to work with legacy files using carriage returns as new lines",
      elixirc_paths: elixirc_paths(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test]
    ]
  end

  def application do
    []
  end

  defp elixirc_paths do
    if Mix.env == :test do
      ["lib", "test/support"]
    else
      ["lib"]
    end
  end

  defp package do
    [
      maintainers: ["Beat Richartz"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/beatrichartz/legacy_file"}
    ]
  end

  defp deps do
    [
      {:excoveralls, "~> 0.6", only: :test},
      {:ex_doc, "~> 0.16", only: :docs},
      {:inch_ex, "~> 0.5", only: :docs},
      {:earmark, "~> 1.2", only: :docs}
    ]
  end

  defp docs do
    {ref, 0} = System.cmd("git", ["rev-parse", "--verify", "--quiet", "HEAD"])

    [
      source_ref: ref,
      main: "overview"
    ]
  end
end
