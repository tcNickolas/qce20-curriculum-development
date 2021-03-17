// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

//////////////////////////////////////////////////////////////////////
// This file contains reference solutions to all tasks.
// The tasks themselves can be found in Tasks.qs file.
// We recommend that you try to solve the tasks yourself first,
// but feel free to look up the solution if you get stuck.
//////////////////////////////////////////////////////////////////////

namespace Quantum.Kata.Superposition {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;


    // Task 1.1. Prepare basis state
    operation PrepareBasisState_Reference (qs : Qubit[], bitString : Bool[]) : Unit is Adj {
        for i in 0 .. Length(qs) - 1 {
            if bitString[i] {
                X(qs[i]);
            }
        }
    }
}
