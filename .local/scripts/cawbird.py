#!/usr/bin/python

# https://fosspost.org/tutorials/custom-system-tray-icon-indicator-linux
# https://wiki.ubuntu.com/DesktopExperienceTeam/ApplicationIndicators

import os, gi
gi.require_version('Gtk', '3.0')
gi.require_version('AppIndicator3', '0.1')
from gi.repository import Gtk as gtk, AppIndicator3 as appindicator

def main():
  # /usr/share/icons/hicolor/scalable/apps/uk.co.ibboard.cawbird.svg
  indicator = appindicator.Indicator.new("customtray", "/usr/share/icons/hicolor/24x24/apps/uk.co.ibboard.cawbird.png", appindicator.IndicatorCategory.APPLICATION_STATUS)
  indicator.set_status(appindicator.IndicatorStatus.ACTIVE)
  indicator.set_menu(menu())
  gtk.main()

def menu():
  menu = gtk.Menu()
  
  command_one = gtk.MenuItem('Cawbird')
  command_one.connect('activate', note)
  menu.append(command_one)
  exittray = gtk.MenuItem('Exit Tray')
  exittray.connect('activate', quit)
  menu.append(exittray)
  
  menu.show_all()
  return menu
  
def note(_):
  os.system("cawbird")

def quit(_):
  gtk.main_quit()

if __name__ == "__main__":
  main()
