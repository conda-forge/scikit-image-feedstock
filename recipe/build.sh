set -ex
# clean any cython-generated .c/.cpp files (as used by "make clean")
find . -name "*.pyx" -exec ./tools/rm_pyx_assoc_c_cpp.sh {} \;

mkdir builddir

# need to run meson first for cross-compilation case
${PYTHON} $(which meson) setup ${MESON_ARGS} \
    builddir || (cat builddir/meson-logs/meson-log.txt && exit 1)

${PYTHON} -m build --wheel --no-isolation --skip-dependency-check -Cbuilddir=builddir
${PYTHON} -m pip install dist/scikit_image*.whl
