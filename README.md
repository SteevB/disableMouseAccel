# disableMouseAccel
Disable mouse acceleration for Ubuntu/Linux based operating systems. 


<strong> FILE: disableMouseAcceleration.sh </strong>
<ul>
  <li>USAGE: ./disableMouseAcceleration.sh</li>
  <li>DESCRIPTION:  Completely disables mouse acceleration for Linux based systems</li>
  <li>OPTIONS:  No Current Options Available</li>
  <li>REQUIRMENTS:  System running Linux</li>
  <li>AUTHOR:  Stephen Briles</li>
  <li>VERSION:  0.1.1 </li>
  <li>CREATED:  04.29.2016</li>
  <li>REVISION:  04.29.2016</li>
</ul>

     HOW TO USE >>>

  1. Open Terminal and enter the command 'xinput list' (without quotes).
  2. Locate the device you wish to disable mouse acceleration on and take note of the "id" #.
     - There will be a human readable device name that will make it easy to identify.
     - For example I see 'Razer Abyssus id=14' in the list when I run this command.
  3. Once you locate your id #, run the command 'xinput list-props #', where # is the device ID number.
  4. On the first line of the output, copy the name that is listed after 'Device' and copy that into the deviceName ariable in the script below.
  5. Save script, then in the terminal, cd to the directory that the script is saved to.
     - Run the command chmod 755 nameOfTheScript.sh to give the file the proper permissions
  6. Finally run the script. If there are no errors then mouse acceleration should now be disabled.
  7. Add this script to your startup applications if you do not want to manually run it every time you log on.


   *** I am working on getting a GUI interface set up that can auto detect device and set up the proper configuration.
       Check back at this repo to get the latest updates.
