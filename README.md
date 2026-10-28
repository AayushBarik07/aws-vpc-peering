# AWS VPC Peering — Private Network Connectivity

A hands-on AWS networking project demonstrating how to connect two Virtual Private Clouds (VPCs) using VPC Peering, route tables, security groups, and EC2 instances.

## Architecture

```text
                 Internet
                    |
             Internet Gateway
                    |
          VPC A — 10.10.0.0/16
                    |
          Public Subnet
          10.10.1.0/24
                    |
              EC2 Bastion
             10.10.1.10
                    |
          VPC Peering Connection
                    |
          VPC B — 10.20.0.0/16
                    |
          Private Subnet
          10.20.1.0/24
                    |
              EC2 App Server
              10.20.1.24
```

## AWS Resources

| Resource | Configuration |
|---|---|
| Region | Europe (Stockholm) — `eu-north-1` |
| VPC A | `10.10.0.0/16` |
| VPC B | `10.20.0.0/16` |
| Public subnet | `10.10.1.0/24` |
| Private subnet | `10.20.1.0/24` |
| VPC Peering | Active |
| Bastion EC2 | `10.10.1.10` |
| Private EC2 | `10.20.1.24` |
| Instance type | `t3.micro` |

## Implementation

- Created two isolated VPCs with non-overlapping CIDR ranges.
- Configured public and private subnets.
- Created and activated a VPC Peering connection.
- Added peering routes to enable traffic between the VPC CIDR ranges.
- Configured security groups for controlled access.
- Launched a public bastion host and a private EC2 instance.

## Validation Status

- [x] Both VPCs created.
- [x] VPC Peering connection active.
- [x] VPC A private route table configured.
- [x] VPC B private route table configured.
- [x] EC2 instances launched.
- [ ] SSH connectivity to the bastion host verified.
- [ ] End-to-end private connectivity verified.

## Key Learnings

- VPCs, subnets, and CIDR addressing.
- Public versus private subnet routing.
- VPC Peering and route table configuration.
- Security groups and network access control.
- EC2 bastion-host architecture and private-resource access.

## Technologies

AWS VPC · VPC Peering · EC2 · Route Tables · Security Groups · Linux

## Future Improvements

- Verify SSH access to the bastion host.
- Validate private connectivity across the peering connection.
- Add architecture screenshots and connectivity test results.
- Document troubleshooting steps and security best practices.
