@rem We want the Unix configure script to be used.
del configure.win
copy configure configure.win
"%R%" CMD INSTALL --build . --configure-args="--disable-pkg-config"

if errorlevel 1 exit 1

@rem Add more build steps here, if they are necessary.

@rem See
@rem http://docs.continuum.io/conda/build.html
@rem for a list of environment variables that are set during the build process.
