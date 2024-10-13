# Doom64EX on Flatpak

This project contains files to build [Doom64EX](https://github.com/svkaiser/Doom64EX) as a Flatpak app.

## Building the app
Follow the [build guide](https://docs.flatpak.org/en/latest/building.html), basically you have to run:

```shell
$ flatpak-builder --user --verbose --install --install-deps-from=flathub --force-clean \
  build io.github.svkaiser.Doom64EX.yaml
```

## Copy game files
If you already have required `doom64.wad` and `doomsnd.sf2` files, just copy them in folder `~/.var/app/io.github.svkaiser.Doom64EX/data/doom64ex`.

## Generate game files
If you have a `Doom64.z64` valid ROM, copy it in folder `~/.var/app/io.github.svkaiser.Doom64EX/data/doom64ex`.
Then run the following commands:

```shell
$ flatpak run --command=bash io.github.svkaiser.Doom64EX

[📦 io.github.svkaiser.Doom64EX ~]$ cd /var/data/doom64ex

[📦 io.github.svkaiser.Doom64EX doom64ex]$ doom64ex -wadgen Doom64.z64

[📦 io.github.svkaiser.Doom64EX doom64ex]$ exit
```

The above commands should generate required files, now you can start the game.
