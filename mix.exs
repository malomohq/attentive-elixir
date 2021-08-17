defmodule Attentive.MixProject do
  use Mix.Project

  def project do
    [
      app: :attentive,
      version: "1.0.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      { :hackney, "~> 1.17" },

      { :jason, "~> 1.2" },

      #
      # dev
      #

      { :dialyxir, "~> 1.0", only: :dev, runtime: false },

      { :ex_doc, ">= 0.0.0", only: :dev, runtime: false }
    ]
  end

  defp elixirc_paths(:test) do
    ["lib/", "test/"]
  end

  defp elixirc_paths(_env) do
    ["lib/"]
  end

  defp package do
    %{
      description: "Elixir client for the Attentive API",

      maintainers: ["Anthony Smith"],

      licenses: ["MIT"],

      links: %{
        GitHub: "https://github.com/malomohq/attentive-elixir",

        "Made by Malomo - Post-purhcase experiences that customers love": "https://gomalomo.com"
      }
    }
  end
end
