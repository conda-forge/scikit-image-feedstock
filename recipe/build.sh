set -ex
# clean any cython-generated .c/.cpp files (as used by "make clean")
find . -name "*.pyx" -exec ./tools/rm_pyx_assoc_c_cpp.sh {} \;
meson setup ${MESON_ARGS} builddir/ || (cat builddir/meson-logs/meson-log.txt && exit 1)
$PYTHON -m build -w -n -x -Cbuilddir=builddir
pip install dist/scikit-image*.whl
