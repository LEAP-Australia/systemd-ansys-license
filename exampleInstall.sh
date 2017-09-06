## STEP 1
cd $HOME
mkdir lm
cd lm
# upload/download the ENTERPRISELICENSING_182_LINX64.tar here

## Step 2
sudo useradd -r -U license.user

## Step 3
tar -xf ENTERPRISELICENSING_182_LINX64.tar
tar -xf ansyslm_linx64.tgz
sudo mkdir /opt/ansys_inc
sudo mv shared_files /opt/ansys_inc/.

## Step 4
sudo chown -R license.user:license.user /opt/ansys_inc/shared_files

## Step 5
wget https://github.com/LEAP-Australia/systemd-ansys-license/archive/v1.0.tar.gz
tar -xf v1.0.tar.gz

# Step 6
cd systemd-ansys-license-1.0/
sudo cp -v systemd-ansys-license-1.0/*.service /etc/systemd/system

# Step 4
sudo systemctl daemon-reload
sudo systemctl enable ansys-interconnect



