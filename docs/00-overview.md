# Automating Cisco UCS Server Provisioning with Terraform and Intersight 

This hands-on workshop will walk you through the process of setting up Terraform to manage your Intersight resources, from API credential generation through building server profiles for UCS servers.

## Workshop Outline

This workshop is broken down into the following sections:

- [Foundational Information](./01-intro.md)
- [Intersight Authentication](./02-authentication.md)
- [Standalone Server Profiles](./03-standalone.md)
- [Intersight Managed Server Profiles](./04-intersight.md)
- [Server Profiles at Scale](./05-scaling.md)

Direct navigation to each section is not necessary as the learning lab platform will provide the workflow navigation at the bottom of the page.

## Prerequisites

The following technologies and initial setup is required prior to engaging this workshop.

- [Git](https://git-scm.com)
- [Terraform 1.1.9](https://www.terraform.io/downloads)
- [Terraform Provider 1.0.28](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest)
- [Cisco Intersight Account](https://intersight.com)
    - For lab purposes, Cisco Intersight trial license will suffice
    - For production purposes, Cisco Intersight Essentials License
- Cisco UCS Servers
    - UCS C-series: Any M4 or newer generation
    - UCS 6454 Fabric Interconnects
    - UCS B-series or C-series connected to FIs: M4 or newer with VIC1400 or newer adapters

*_This list is for your information only._*
The software and command line terminal are provided for you in this session and so no installation is required. And, for Cisco Live in-person delivery, the required Intersight and UCS hardware will be provisioned ahead of time on your behalf.
