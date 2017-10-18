defmodule CursorPos do

  def get_pos do
      settings = ShellStream.shell("stty -g") |> Enum.to_list

      #ShellStream.shell("stty -echo -echoctl -imaxbel -isig -icanon min 1 time 0")
      ShellStream.shell("stty raw -echo")
      #settings |> IO.inspect
      spawn(fn ->
            IO.write "\e[6n"
            #ShellStream.shell "echo -en \"\033[6n\" > `tty`"
            :timer.sleep(50)
            IO.write "\n"
           end)
      io = IO.stream(:stdio,1)
      data = io |> Stream.take_while(&(&1 != "R"))
      data|> Enum.join  |> IO.inspect
      ShellStream.shell("stty #{settings}")
  end
  
  def main(args) do
      get_pos
  end
end
