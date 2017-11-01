import sys
import matplotlib

matplotlib.use('Agg')

import skimage

sys.exit(skimage.test(verbose=True))
