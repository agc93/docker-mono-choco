# `mono-choco`

This image is a simple image based on Mono 3.12, building Chocolatey from source and running it through Mono.

To run the image interactively, run `docker run -it agc93/mono-choco bash`.

For non-interactive, you can run `docker run agc93/mono-choco choco <your-options-here` (`choco` is available on the `PATH`)
