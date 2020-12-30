c2-build:
	@mkdir -p build/c2
	@rm -rf build/c2/*
	cd build/c2 && cmake ../../c2
	cd build/c2 && cmake --build .
