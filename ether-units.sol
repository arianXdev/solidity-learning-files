pragma solidity >= 0.7.0 < 0.9.0;

// Ether units

// Ethereum is the blockchain and Ether is the currency for Ethereum.

contract EtherUnits {
    
    function checkAssertions() public {

        // "assert" is a special keyword in Solidity that we can use! (Very similar to "require()")
        // "assert" is going to check if what's inside of it is true, if it's true, it's going to let the transaction run.
        // if it's not true, it's going to destroy our function! it's going to break our code.

        // So If you want to write something that's true, you can use assert(bool condition | assertion)
        // assert(sky == blue); // if the sky is blue, this function is going to run! if the sky is not, it's going to fail.

        // 1 dollar = 100 cents | 1 euro = 100 cents | 1 ether = 1000000000000000000 wei (10^18)
        // wei is essentially the smallest denomination of ether like cent!
        // 1 ether (ETH) = 10^18 wei

        assert(1000000000000000000 wei == 1 ether); // 1 eth = 10^18

        assert(1 wei == 1); // 1 wei = 1

        assert(1 ether == 1e18); // 1 ether = 1e18

    }
}

contract firstExercise {
    // Exercise: Create an assertion for 2 eths to be equivalent to weis.

    function checkAssertions() public {
        assert(2 ether == 2e18); // 2 ethers = 2e18 (2000000000000000000)

        assert(2 ether == 2000000000000000000);
    }
}

contract TimeUnits {
    // Similar to currency, Solidity has time units where lowest unit is second and we can use seconds, 
    // minutes, hours, days and weeks as suffix to denote time just like JavaScript has Date object

    // Exercise - Create the following assertions in a function called exercise:
    // Assert equivalencies for minutes to seconds, hours to minuts, days to hours, and weeks to days
    uint public date = 10 minutes; //... automatically converts to seconds!

    function checkAssertions() public {
        // MINUTES TO SECONDS
        assert(1 minutes == 60 seconds);

        assert(10 minutes == 600 seconds);

        assert(2 minutes == 120 seconds);

        // HOURS OT MINUTES
        assert(1 hours == 60 minutes);

        assert(60 minutes == 1 hours);

        assert(24 hours == 1440 minutes);

        // DAYS TO HOURS
        assert(1 days == 24 hours);

        assert(7 days == 168 hours);

        assert(72 hours == 3 days);

        // WEEKS TO DAYS
        assert(1 weeks == 7 days);

        assert(4 weeks == 28 days);

        assert(4 weeks == 672 hours);
    }
}

contract secondExercise {
    uint16 number = 2022;

    function checkAssertions() public {
        assert(2023 - 1 == number); // true

        assert(24 % 2 == 0); // true

        assert(40 + 19 == 60 - 1); // true

        assert(7 days == 6 days + 24 hours); // true

        assert(25 hours - 1 hours == 7 days - 144 hours); // true

        assert(4 weeks - 3 weeks - 120 hours - 86400 seconds == 1 days); // true

        assert(2 weeks / 2 - 120 hours - 24 hours == 1440 minutes); // true

        assert(3 weeks + 1440 minutes == 22 days); // true

        assert(90 days == 12 weeks + 6 days); // true

        assert(48 weeks - 100800 minutes == 38 weeks); // true

        assert((86400 seconds + 518400 seconds + 30240 minutes) / 2 - 345600 seconds == 240 hours);

        assert(2 weeks * 2 - 604800 seconds - 3 days + 86400 seconds == 2 days * 10 - 86400 seconds);

    }
}