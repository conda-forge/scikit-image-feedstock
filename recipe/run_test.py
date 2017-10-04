import os
import matplotlib

os.environ['QT_QPA_PLATFORM'] = 'offscreen'
matplotlib.use('Qt4agg')
matplotlib.rcParams['backend.qt4'] = 'PyQt4'

import skimage

skimage.test()
