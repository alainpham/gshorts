gcc gshorts.c -o gshorts $(pkg-config --cflags --libs sdl2)
sudo cp gshorts /usr/local/bin/gshorts.new
sudo chmod 755 /usr/local/bin/gshorts.new
sudo mv /usr/local/bin/gshorts.new /usr/local/bin/gshorts