#!/bin/bash


echo ""
echo "Starting at $(date +%R)"
echo ""

sdate=$(date +%s)



#sudo yum install -y ansible


########################################
# REMOVING OPENSHIFT
########################################

#ansible-galaxy install luisarizmendi.ocp_libvirt_ipi_role

ansible-playbook -vv -i inventory --tags remove ocp_libvirt_ipi.yaml

########################################




cdate=$(date +%s)
duration=$(( $(($cdate-$sdate)) / 60))

echo ""
echo "Duration (mins): $duration"
echo ""


