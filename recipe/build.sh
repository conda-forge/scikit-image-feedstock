set -ex

rm -f skimage/filters/*.c
rm -f skimage/restoration/_*.c
rm -f skimage/segmentation/*.c
rm -f skimage/io/*.c
rm -f skimage/graph/*.c
rm -f skimage/measure/*.c
rm -f skimage/_shared/*.c
rm -f skimage/morphology/*.c
rm -f skimage/feature/*.c
rm -f skimage/transform/*.c
rm -f skimage/draw/*.c
rm -f skimage/future/*.c

${PYTHON} -m pip install . -vv
