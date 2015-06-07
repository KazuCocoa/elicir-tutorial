defmodule KV.Mixfile do
  use Mix.Project

  def project do
    [app: :kv,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps_path: deps_path(Mix.env)]
  end

  defp deps_path(:prod), do: "prod_deps"
  defp deps_path(_), do: "deps"

  def application do
    [applications: [],
     env: [routing_table: []],
     mod: {KV, []}]
  end

  defp deps do
    []
  end
end
