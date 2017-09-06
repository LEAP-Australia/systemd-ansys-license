## systemd unit files to manage ANSYS License services

## Installation instructions
1. Obtain the enterprise licensing package for Linux
2. Create a system user called license.user
   * The user name, if changed, needs to be reflected in the unit files
   * The license service will run under this user
   * Running the license services as root is strongly discouraged
   * The installation directory should be owned by this user 
3. Extract contents to /opt/ansys_inc 
   * This folder is suggested and can be changed to your preference
   * The systemd unit files need to be appropriately modified to reflect the installed location
4. Change ownership of /opt/ansys_inc/shared_file to license.user (created in step 3)
5. Obtain systemd unit files from github
6. Copy unit files to /etc/systemd/system 
7. Reload systemd daemon and enable and start the ansys-interconnect service


