TDLIB_PREFIX := $(CURDIR)/target/tdlib
JOBS ?= 2

.PHONY: build tdlib

build: tdlib
	cargo clean -p tdlib-rs
	cargo build --locked

tdlib:
	cmake -S vendor/td -B target/tdlib-build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$(TDLIB_PREFIX)" -DCMAKE_INSTALL_NAME_DIR="$(TDLIB_PREFIX)/lib" -DTD_INSTALL_STATIC_LIBRARIES=OFF -DBUILD_TESTING=OFF
	cmake --build target/tdlib-build --target tdjson --parallel $(JOBS)
	cmake --install target/tdlib-build
