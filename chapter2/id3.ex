defmodule ID3Parser do
  def parse(file_name) do
    case File.read(file_name) do
      {:ok, mp3} ->
        # mp3 size minus 128 bytes where id3 tag is located
        mp3_byte_size = byte_size(mp3) - 128

        # pattern match mp3 binary to capture id3_tag
        <<_::binary-size(mp3_byte_size), id3_tag::binary>> = mp3

        # pattern match components of id3_tag
        <<_::binary-size(3), title::binary-size(30), artist::binary-size(30),
          album::binary-size(30), year::binary-size(30), _::binary>> = id3_tag

        title = String.trim(title, <<0>>)
        artist = String.trim(artist, <<0>>)
        album = String.trim(album, <<0>>)

        IO.puts("#{artist} - #{title} (#{album}, #{year})")

      _ ->
        IO.puts("Couldn't open #{file_name}")
    end
  end
end
