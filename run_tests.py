import os
import matplotlib

os.environ['QT_QPA_PLATFORM'] = 'offscreen'
matplotlib.use('Qt4agg')
matplotlib.rcParams['backend.qt'] = 'PyQt4'

import skimage

skimage.test()
