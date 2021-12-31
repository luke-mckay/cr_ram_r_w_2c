## cr_ram_r_w_2c - Memory w/ Independently Clocked Read & Write Ports

*Collective RTL Library - Building Blocks Core*

-----
### Overview

A simple parameterized RAM for things like an asynchronous FIFO.

#### Version

0.1.1_pre-alpha

##### History

31DEC21 - Created

#### Features

- list features **@todo**

#### Parameters

- pWidth     - *Datapath Width, RAM Word Width*
- pAddrSize  - *Number of address bits*
- pAsyncRead - *First word fall-through*

#### Ports

- WrClk  - *Write Clock Input*
- WrEn   - *Write Enable Input*
- WrAddr - *Write Address Input*
- WrData - *Write Data Input*
- RdClk  - *Read Clock Input*
- RdEn   - *Read Enable Input*
- RdAddr - *Read Address Input*
- RdData - *Read Data Output*

-----
### Theory of Operation

#### Functional Description

**@todo** functionality

#### Block Diagram

**@todo**

#### Timing Diagram(s)

**@todo**

#### Timing Constraints

**@todo**

-----
### Verification / Simulation

Verification / simulation of the core is documented in a different repo. This
other repo may also contain validation instantiations for supported
technologies. Note that this 'test' repo is under a different license.

The repo is: cr_ram_r_w_2c_test **@todo**

### Supported Technologies

**@todo** techs

#### Utilization & Performance

**@todo** utilization and performance

-----
### Copyright & License

```
Copyright 2021, Luke E. McKay.
SPDX-License-Identifier: Apache-2.0
```

-----
### Technical Support & Feedback

To obtain technical support, create an issue at the GitHub repository for this
project. The issue process will address reported bugs, questions, and any other
feedback via the repository issues at the GitHub repo.

Technical support for use of this core assumes the core is being used according
to the guidelines described in the core documentation. Please reference the
included documentation before creating an issue.
