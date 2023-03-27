defmodule Heart.MixProject do
  use Mix.Project

  def project do
    [
      app: :heart,
      version: "1.0.0",
      deps: deps()
    ]
  end

  def deps() do
    [{:font_metrics, "~> 0.5"}]
  end
end
