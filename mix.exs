defmodule Hidraw.MixProject do
  use Mix.Project

  @app :hidraw

  def project do
    [
      app: @app,
      version: "0.2.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      make_clean: ["clean"],
      compilers: [:elixir_make | Mix.compilers()],
      deps: deps(),
      docs: [extras: ["README.md"], main: "readme"]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:elixir_make, "~> 0.3"},
      {:ex_doc, "~> 0.18", only: :dev}
    ]
  end

  defp description do
    "Elixir interface to Linux hidraw devices"
  end

  defp package do
    [
      maintainers: ["Justin Schneck"],
      licenses: ["Apache 2.0"],
      links: %{"Github" => "https://github.com/letoteteam/#{@app}"}
    ]
  end
end
