#
# Makefile for installing on Mac OS X
#

SKETCHUP_PLUGIN_DIR := /Library/Application\ Support/Google\ SketchUp\ 8/SketchUp/plugins/
EAGLE_ULP_DIR := $(shell locate EAGLE.app | sed -n -e 's/EAGLE.app/ulp/p;q')

install:
	sudo mkdir -p $(SKETCHUP_PLUGIN_DIR)
	sudo cp Sketchup\ Plugin/eagleUp_import.rb $(SKETCHUP_PLUGIN_DIR)
	sudo cp Eagle\ ULP/eagleUp_export.ulp $(EAGLE_ULP_DIR)
