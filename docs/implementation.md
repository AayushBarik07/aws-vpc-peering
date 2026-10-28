# Implementation Guide

## Objective

Configure two AWS VPCs and establish private network connectivity through VPC Peering.

## Network Design

| Component | Configuration |
|---|---|
| AWS Region | `eu-north-1` |
| VPC A | `10.10.0.0/16` |
| VPC B | `10.20.0.0/16` |
| VPC A public subnet | `10.10.1.0/24` |
| VPC B private subnet | `10.20.1.0/24` |
| Bastion private IP | `10.10.1.10` |
| Private EC2 IP | `10.20.1.24` |

## Implementation Stages

1. Create two VPCs with non-overlapping CIDR ranges.
2. Configure public and private subnets.
3. Attach an Internet Gateway to VPC A.
4. Configure route tables and subnet associations.
5. Establish the VPC Peering connection.
6. Add the required routes through the peering connection.
7. Configure security groups to restrict network access.
8. Launch and inspect EC2 instances.
9. Test connectivity and document the results.

## Terraform Status

The Terraform configuration currently uses data sources to reference existing resources. Terraform import and lifecycle management have not yet been completed.

## Verification

Record the actual results of route checks, connection tests, and resource inspection in `testing.md`. Do not mark a test as successful until it has been performed.
