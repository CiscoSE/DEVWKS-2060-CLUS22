# Automating Cisco UCS Server Provisioning with Terraform and Intersight

This workshop will provide the attendee with an overview of the
[Intersight platform](00-introduction/README.md) and its various
services, introduce the platform's [REST API](01-rest/README.md)
and how to consume it via [Terraform OSS](https://terraform.io),
providing detailed examples of how to build a [server profile](https://intersight.com/help/saas/features/servers/operate#server_profiles).

## Pre-Requisites

This session is an intermediate level session and thus requires some
foundational knowledge in order to gain the most value from the content.
This foundational knowledge will not be covered in this session due
to the limited time available. Attendees are encouraged to attend other
[Cisco Live sessions](https://www.ciscolive.com/on-demand/on-demand-library.html) or complete the relevant
[DevNet Learning Lab](https://developer.cisco.com/learning/modules) modules prior to attempting this session.

Foundational knowledge required for this session:
- [REST API Basics](https://developer.cisco.com/learning/lab/collab-tools-rest-api-concepts-itp/step/1)
- [Terraform Basics](https://www.terraform.io/intro) and [Terraform Getting Started](https://learn.hashicorp.com/collections/terraform/aws-get-started)
- Familiarity with Linux CLI, specifically environment variables

Ideally, the following knowledge will further ease your learning journey in this session although is not required:
- [DevNet Learning Lab Module - Cisco Intersight REST API](https://developer.cisco.com/learning/modules/intersight-rest-api)

## Session Contents

To understand how to build server profiles, we first must know
about the three different modes of management available for UCS servers:
- _Standalone_: this mode of operation describes UCS C-series rack mount servers that are not connected to UCS Fabric Interconnect devices.
- _Intersight Managed_: this mode describes UCS servers, both B-series blades and C-series rack mounts, that are connected to UCS Fabric Interconnects. These fabric interconnects are running the Intersight Managed firmware (based on the Redfish API) and whose configuration and operations are controlled by Intersight.
- _UCS Managed_: this mode describes UCS servers, both B-series blades and C-series rack mounts, that are also connected to UCS Fabric Interconnects. However, in this mode, the fabric interconnects are running the original UCS Manager firmware based on the legacy XML API and its related schema/model. This mode of management is not supported via the Terraform Intersight provider today and is out of scope for this session.

In this session, attendees will learn about the object models
that are relevant to UCS rack mount servers that operate in
[Standalone](02-standalone/README.md) mode and UCS servers (both
blades and rack mounts) that operate in [Intersight Managed](03-intersight/README.md)
mode. These models are critically important to understand as they
map directly to resources available in the [Intersight Terraform Provider](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest).

## Session Roadmap

Due to the constraints of time, attendees of the in-person live delivery of this session will participate in the following modules:

- [Intersight REST API Setup](01-rest/README.md)
- [Standalone Server Profiles](02-standalone/README.md)
- [Intersight Managed Server Profiles](03-intersight/README.md)
- [Server Profile Modules](04-modules/README.md)

## Maintained Server Profile Respository

This session's content will be frozen in time and not maintained. As
the Intersight API and its Terraform provider are further developed,
breaking changes are likely to occur. If you would like to have a more
up to date Intersight/Terraform repository for this server profile content, I am maintaining those Terraform configurations here:
[Intro to Terraform and Intersight](https://github.com/gve-vse-tim/intro-to-terraform-and-intersight).

## Additional Resources

In addition to the foundational knowledge required for this session,
there are many other resources available to assist the attendees in
their Intersight automation journey. The usual disclaimer applies in
that these are for your information and no guarantee/warranty of
usefulness applies since many are not maintained by the product teams
themselves:

- [Standalone Server CIMC Device Claim](https://community.cisco.com/t5/data-center-and-cloud-documents/automated-intersight-device-claim/ta-p/3652214)
- [Intersight Python Utilities](https://github.com/CiscoDevNet/intersight-python-utils)
- [Intersight Terraform Provider](https://github.com/CiscoDevNet/terraform-provider-intersight)
- [A Study of Intersight in Terraform](https://github.com/jerewill-cisco/intersight-terraform-simplified)