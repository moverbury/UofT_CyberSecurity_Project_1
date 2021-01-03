# Azure Networking Project
The goal is to configure a highly available web server on a secure virtual network, and set up a cloud monitoring system, using Azures' cloud platform.

Set up VNet infrastructure with VM's, virtual network, peerings, Ansible container, jump-box for added security, Docker containers, DVWA, Kabana with Filebeat and Metricbeat, yamal scripts, SSH and HTTP secure access.

The project was created in stages:

Stage 1
Sign up for Azure account and complete the following:
	
	Create the Jump Box and two Web VM's, configured with an SSH key. 
	set up SSH with password protection into the Jump Box
	Create availability set using the same security group and vNet firewall

Stage 2
Install Docker container - Ansible on the Jump Box
set up and verify SSH into the two VM's

Stage 3
Create Ansible Playbooks to configure Docker and download DVWA to the VM's
Verify VW's are running DVWA Docker container
Verify SSH into VM's from Jump Box with new config
In Azure, create a Load Balancer, select the Backend Pool and confirm traffic access
Verify the DVWA can be accessed from the Internet

Stage 4
Set up redundancy - create copy of the VM using Ansible playbook for the configuration
Confirm VM is in backend pool for the load balancer
Test availability by shutting one site down at a time and confirming access from the internet

Stage 5 
Set up ELK Stack complete with Kabana
Create Ansible Playbooks to configure Filebeat and Metricbeat in ELK stack and install on DVWA VM's
Confirm access from the internet into Kabana and test the beats
