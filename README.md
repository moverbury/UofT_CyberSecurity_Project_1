## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://github.com/moverbury/UofT_CyberSecurity_Project_1/blob/main/Network_diagram/Azure%20Resource%20Group.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above, or 
alternatively, select portions of the YAMAL file may be used to install only certain pieces of it, such as Filebeat.

  - https://github.com/moverbury/UofT_CyberSecurity_Project_1/blob/main/Ansible/install-ELK.yml 

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting exposure to the network.
Load balancers protect availability. The advantage of utilizing a jump box is in limiting the security perimeter.
An NSG protects all the VM's and controls access.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.

The configuration details of each machine may be found below.


| Name     | Function     | IP Address     | Operating System |
|----------|--------------|----------------|------------------|
| Jump Box | Gateway      | 13.82.136.119  | Linux            |
| LoadBal  | Distribution | 52.149.136.175 | Virtual Windows  |
| Web-1    | Container    | 10.0.1.6       | Linux            |
| Web-2    | Container    | 10.0.1.5       | Linux            |
| ELK      | Metric/logs  | 10.0.1.4       | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
   142.112.0.0/12

Machines within the network can only be accessed by SSH.
 The only machines with access to the ELK VM are the JumpBox (10.0.1.7) or externally through HTTP Port 5601 (142.112.0.0/12) 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 142.112.0.0/12       |
| LoadBal  | No                  | 142.112.0.0/12       |
| Web-1    | No                  | 142.112.0.0/12       |
| Web-2    | No                  | 142.112.0.0/12       |
| ELK      | No                  | 142.112.0.0/12       |               

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because new machines can be built out very quickly and updating all machines is accomplished
simply with the running of the script, in seconds.

The playbook implements the following tasks:
- install Docker 
- install python3
- install Docker python module
- allow increased memory
- download and launch docker elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

As of Jan032021 a I am unable to update github to create this path and copy it: ![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.1.6 10.0.1.5

I have installed the following Beats on these machines:
- Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
Filebeat collects log data and monitors the audit logs, depracation logs, gc logs, server logs and slow logs. 
Metricbeat views stats and status of any/all servers and sends all the raw data to Elasticsearch. The advantage here is Metricbeat creates events containing a list of metrics. This allows
transformations on the data at a later time which saves on storage and makes it easier to view other values when one of the metrics for a service seems off.


Provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
