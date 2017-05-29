# LegacyFile

###You have:
Files separated by CR (carriage return_), LF (line feed), or CRLF?

###You want:
To read them all in and expose a stream of lines regardless.

###Wait! Doesn't Elixir / Erlang support this out of the box?
No. [File.Stream](https://github.com/elixir-lang/elixir/blob/v1.4.4/lib/elixir/lib/file/stream.ex#L85) uses
[IO.each__stream](https://github.com/elixir-lang/elixir/blob/v1.4.4/lib/elixir/lib/io.ex#L502) which uses
[:io.get_line](http://erlang.org/documentation/doc-5.3/lib/stdlib-1.12/doc/html/io.html#get_line%2). LF and CRLF are
handled, but not CR, which is used in some Mac OS and other legacy formats.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `legacy_file` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:legacy_file, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/legacy_file](https://hexdocs.pm/legacy_file).

