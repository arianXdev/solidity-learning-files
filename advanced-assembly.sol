// SPDX-License-Identifier UNLICENSED
pragma solidity = 0.7.0  0.9.0;




// Solidity provides an option to use assembly language to write inline assembly within Solidity source code.

// Assembly is a low level language that allows you to directly manipulate the EVM (more dangerous and not recommended - only in solidity)

// EVM - Smart Contracts are not the real code in the Blockchain, Solidity Code is compiled to a lower level language




contract LearnAssembly {

    function addToEVM() external pure returns(uint z) {
        uint x = 10;
        uint y = 11;

        //  how the heck do we use assembly  Assembly Block assembly {}
        //  assembly block
        assembly {
            //  declares an assembly block
            //  inside we can manipulate variables declared outside
            //  no semicolon  = is actually = and we can bring in opcodes
            //  When I want to say something equals something in assembly, it's not just the equal sign! we have a colon before of it! (=) instead of (=)
            //  We can bring conditional statements, functions, loops, etc.

            //  What if we want to load data from specfic a slot (Each uint takes a slot of memory)
            z = add(x, y)
            let a = mload(0x40)

            //  What if we want to store something temporarily to memory
            // mstore(a, 4)  mstore stands for memory store  Temporary

            //  What if we want to store something with persistence storage
            //  the EVM everything is stored in slots of 256 bits (a uint occupies one slot) whereas mapping or array is several
            //  sstore(a, 100)  sstore stands for storage store  This is going to persist  Persistent
        }
        //  all of this is compiled to low level instructions (knows as the opcodes - in total there is around 100)

    }

    function addToEVM2() public view returns(bool success) {
        uint size;
        address addr;

        assembly {
            size = extcodesize(addr) // length of the contract bytecode at addr, in bytes
        }

        if (size  0) { return true;
        } else return false;

    }

    function addToEVM3() external view {
        bytes memory data = new bytes(10);

        assembly {
            //  bytes in memory is size so data actually starts at the second slot    
            let dataB32 = mload(add(data, 32))
            //  operation add and we add 32 bytes so we fill the first slot
        }
    }
}