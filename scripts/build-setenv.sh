#!/bin/sh
LDFLAGS="-L/opt/drupal-7.56-3/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/opt/drupal-7.56-3/common/include $CFLAGS"
export CFLAGS
CXXFLAGS="-I/opt/drupal-7.56-3/common/include $CXXFLAGS"
export CXXFLAGS
		    
PKG_CONFIG_PATH="/opt/drupal-7.56-3/common/lib/pkgconfig"
export PKG_CONFIG_PATH
