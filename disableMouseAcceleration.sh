#!/bin/bash
#
# ===============================================================================
#   FILE: disableMouseAcceleration.sh
#
#   USAGE: ./disableMouseAcceleration.sh
#
#   DESCRIPTION:  Completely disables mouse acceleration for Linux based systems
#       OPTIONS:  No Current Options Available
#   REQUIRMENTS:  System running Linux.
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Stephen Briles
#       COMPANY:  ---
#       VERSION:  0.1.1 
#       CREATED:  04.29.2016
#      REVISION:  04.29.2016
#
#     HOW TO USE >>>
#
#  1. Open Terminal and enter the command 'xinput list' (without quotes).
#  2. Locate the device you wish to disable mouse acceleration on and take note of the "id" #.
#     - There will be a human readable device name that will make it easy to identify.
#     - For example I see 'Razer Abyssus id=14' in the list when I run this command.
#  3. Once you locate your id #, run the command 'xinput list-props #', where # is the device ID number.
#  4. On the first line of the output, copy the name that is listed after 'Device' and copy that into the deviceName variable in the script below.
#  5. Save script, then in the terminal, cd to the directory that the script is saved to.
#     - Run the command chmod 755 nameOfTheScript.sh to give the file the proper permissions
#  6. Finally run the script. If there are no errors then mouse acceleration should now be disabled.
#  7. Add this script to your startup applications if you do not want to manually run it every time you log on.
#
#
#   *** I am working on getting a GUI interface set up that can auto detect device and set up the proper configuration.
#       Check back at this repo to get the latest updates.
# ===============================================================================

# Replace deviceName variable with the device listed from 'xinput list-props #', where # is the device ID number.
deviceName="Razer  Razer Abyssus"

# Xinput Settings
xinput set-prop "$deviceName" 'Device Accel Profile' -1
xinput set-prop "$deviceName" 'Device Accel Constant Deceleration' 2

# -- END OF FILE --
