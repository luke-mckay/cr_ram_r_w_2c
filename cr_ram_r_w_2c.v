// SPDX-License-Identifier: Apache-2.0
/*
 * Copyright 2021, Luke E. McKay.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/** Memory w/ Independently Clocked Read & Write Ports
 *  A simple parameterized RAM for things like an asynchronous FIFO.
 *  Version 0.1.1
 */
module cr_ram_r_w_2c
#(
  parameter  pWidth = 8,    //!< Datapath Width, RAM Word Width
  parameter  pAddrSize = 4, //!< Number of address bits
  parameter  pAsyncRead = 0 //!< First word fall-through
)(
  //# {{clocks|}}
  input  wire                 WrClk,
  input  wire                 RdClk,
  //# {{control|}}
  input  wire                 WrEn,
  input  wire [pAddrSize-1:0] WrAddr,
  input  wire                 RdEn,
  input  wire [pAddrSize-1:0] RdAddr,
  //# {{data|}}
  input  wire [pWidth-1:0]    WrData,
  output wire [pWidth-1:0]    RdData
);

localparam DEPTH = 1<<pAddrSize;

reg [pWidth-1:0] mem [0:DEPTH-1];
reg [pWidth-1:0] rdata_q;

always @(posedge WrClk)
begin
  if (WrEn)
    mem[WrAddr] <= WrData;
end

generate
  if (pAsyncRead == 1)
  begin : AsyncRead
    assign RdData = mem[RdAddr];
  end
  else
  begin : SyncRead
    always @(posedge RdClk)
    begin
      if (RdEn)
        rdata_q <= mem[RdAddr];
    end
    assign RdData = rdata_q;
  end
endgenerate

endmodule
