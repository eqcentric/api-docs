# Makini IP Whitelisting Documentation

## Overview

This document provides instructions for whitelisting Makini's IP addresses to allow secure communication between Makini services and your infrastructure. Whitelisting these specific IP addresses ensures that only authorized Makini systems can access your services while maintaining your security perimeter.

## Makini IP Addresses to Whitelist

Please add the following IP addresses to your allowlist:

| IP Address      | Environment |
| --------------- | ----------- |
| 15.204.75.108   | Production  |
| 15.204.73.75    | Production  |
| 15.204.77.147   | Production  |
| 148.113.140.236 | Production  |
| 51.79.101.4     | Production  |

## Platform-Specific Whitelisting Instructions

### AWS

#### Using Security Groups

1. Sign in to the AWS Management Console
2. Navigate to EC2 > Security Groups
3. Select the security group associated with your resource
4. Click on "Edit inbound rules"
5. Click "Add rule"
6. Configure as follows:
   - Type: Select the appropriate protocol (e.g., HTTPS, Custom TCP)
   - Port range: Enter the port(s) Makini will access
   - Source: Select "Custom"
   - In the field, enter each Makini IP address individually (e.g., 15.204.75.108/32)
   - Add a description (e.g., "Makini Service IP")
7. Repeat steps 5-6 for each Makini IP address
8. Click "Save rules"

#### Using Network ACLs

1. Sign in to the AWS Management Console
2. Navigate to VPC > Network ACLs
3. Select the NACL associated with your subnet
4. Select the "Inbound rules" tab and click "Edit inbound rules"
5. Click "Add rule"
6. Configure as follows:
   - Rule #: Assign a rule number (e.g., 100, 110, etc.)
   - Type: Select the protocol (e.g., HTTPS, Custom TCP)
   - Port range: Enter the port(s) Makini will access
   - Source: Enter each Makini IP address with /32 suffix (e.g., 15.204.75.108/32)
   - Allow/Deny: Select "ALLOW"
7. Repeat for each Makini IP address
8. Click "Save changes"

### Azure

#### Using Network Security Groups (NSG)

1. Sign in to the Azure Portal
2. Navigate to "Network security groups"
3. Select the NSG associated with your resource
4. Under "Settings", click on "Inbound security rules"
5. Click "Add"
6. Configure the rule:
   - Source: Select "IP Addresses"
   - Source IP addresses: Enter the Makini IP address (e.g., 15.204.75.108)
   - Source port ranges: \*
   - Destination: Select as appropriate for your resource
   - Service: Select the protocol or service
   - Destination port ranges: Enter the port(s) Makini will access
   - Protocol: Select as appropriate (TCP/UDP)
   - Action: Allow
   - Priority: Assign a priority number (lower numbers have higher priority)
   - Name: Enter a descriptive name (e.g., "Makini-Service-1")
7. Click "Add"
8. Repeat steps 5-7 for each Makini IP address

### Google Cloud Platform (GCP)

#### Using VPC Firewall Rules

1. Sign in to the Google Cloud Console
2. Navigate to VPC Network > Firewall
3. Click "Create Firewall Rule"
4. Configure the rule:
   - Name: Enter a name (e.g., "allow-makini-service")
   - Network: Select your VPC network
   - Priority: Enter a priority value (lower numbers have higher priority)
   - Direction of traffic: Select "Ingress"
   - Action on match: "Allow"
   - Targets: Select as appropriate for your resource
   - Source filter: IP ranges
   - Source IP ranges: Enter all Makini IP addresses separated by commas (15.204.75.108, 15.204.73.75, 15.204.77.147, 148.113.140.236, 51.79.101.4)
   - Protocols and ports: Select the protocols and ports Makini will access
5. Click "Create"

### Enterprise Routers/Firewalls

#### Generic Instructions for Network Administrators

1. Access your network firewall management console or CLI
2. Navigate to the inbound/ingress rule configuration section
3. Create a new rule or policy with the following parameters:
   - Rule name/description: "Makini Service Access"
   - Source: Specify each Makini IP address (15.204.75.108, 15.204.73.75, 15.204.77.147, 148.113.140.236, 51.79.101.4)
   - Destination: Your internal service IP or subnet
   - Service/Port: The specific port(s) that Makini needs to access
   - Action: Allow
   - Logging: Enable (recommended for audit purposes)

#### Cisco ASA Example (CLI)

```
object-group network MAKINI_IPS
  network-object host 15.204.75.108
  network-object host 15.204.73.75
  network-object host 15.204.77.147
  network-object host 148.113.140.236
  network-object host 51.79.101.4

access-list outside_access_in permit tcp object-group MAKINI_IPS host [YOUR_SERVER_IP] eq [PORT]
```

#### Juniper SRX Example (CLI)

```
set security zones security-zone untrust address-book address makini-ip-1 15.204.75.108/32
set security zones security-zone untrust address-book address makini-ip-2 15.204.73.75/32
set security zones security-zone untrust address-book address makini-ip-3 15.204.77.147/32
set security zones security-zone untrust address-book address makini-ip-4 148.113.140.236/32
set security zones security-zone untrust address-book address makini-ip-5 51.79.101.4/32
set security zones security-zone untrust address-book address-set makini-ips address makini-ip-1
set security zones security-zone untrust address-book address-set makini-ips address makini-ip-2
set security zones security-zone untrust address-book address-set makini-ips address makini-ip-3
set security zones security-zone untrust address-book address-set makini-ips address makini-ip-4
set security zones security-zone untrust address-book address-set makini-ips address makini-ip-5
set security policies from-zone untrust to-zone trust policy allow-makini match source-address makini-ips
set security policies from-zone untrust to-zone trust policy allow-makini match destination-address [YOUR_SERVER]
set security policies from-zone untrust to-zone trust policy allow-makini match application [APPLICATION]
set security policies from-zone untrust to-zone trust policy allow-makini then permit
```
