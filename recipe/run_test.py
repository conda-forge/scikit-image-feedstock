import sys
import matplotlib
import numpy as np
from distutils.version import LooseVersion as Version

matplotlib.use('Agg')

# Use legacy numpy printing. This fix is made to keep doctests functional.
# For more info, see https://github.com/scikit-image/scikit-image/pull/2935 .
# TODO: remove this workaround once minimal required numpy is set to 1.14.0

if Version(np.__version__) >= Version('1.14'):
     np.set_printoptions(legacy='1.13')

import skimage

sys.exit(skimage.test(verbose=True))
