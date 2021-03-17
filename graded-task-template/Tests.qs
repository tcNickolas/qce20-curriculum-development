// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

//////////////////////////////////////////////////////////////////////
// This file contains testing harness for all tasks.
// You should not modify anything in this file.
// The tasks themselves can be found in Tasks.qs file.
//////////////////////////////////////////////////////////////////////

namespace Quantum.Kata.Superposition {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;


    // See a detailed explanation of this testing approach
    // at https://devblogs.microsoft.com/qsharp/inside-the-quantum-katas-part-1/.
    @Test("QuantumSimulator")
    operation T101_PrepareBasisState () : Unit {
        use qs = Qubit[2];
        let bitString = [true, false];
        PrepareBasisState(qs, bitString);
        Message("The state you prepared:");
        DumpMachine();
        Adjoint PrepareBasisState_Reference(qs, bitString);
        AssertAllZero(qs);
    }
}
