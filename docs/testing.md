# Testing and Troubleshooting

## Test Checklist

- [ ] Confirm both VPCs exist in the intended AWS account and region.
- [ ] Confirm the VPC Peering connection is active.
- [ ] Confirm VPC A has the route to `10.20.0.0/16` through the peering connection.
- [ ] Confirm VPC B has the route to `10.10.0.0/16` through the peering connection.
- [ ] Confirm the subnet route-table associations.
- [ ] Verify security-group rules for the intended traffic.
- [ ] Verify SSH access to the bastion host.
- [ ] Verify private connectivity between the intended instances.
- [ ] Run `terraform validate`.
- [ ] Review a Terraform plan before managing existing resources.

## Known Issue

SSH connectivity to the bastion host previously timed out. The root cause has not yet been confirmed.

## Troubleshooting Notes

A failed SSH connection may result from a security-group rule, network ACL, route table, Internet Gateway attachment, host configuration, or local network restrictions.

Check each layer before changing rules. Avoid opening SSH to all IP addresses.

## Results

Record each test's date, command or AWS console check, expected result, actual result, and status here.
