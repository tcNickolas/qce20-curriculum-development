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
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Random;


    @Test("QuantumSimulator")
    operation T101_PrepareBasisState () : Unit {
        using (qs = Qubit[2]) {
            let bitString = [true, false];
            PrepareBasisState(qs, bitString);
            DumpMachine();
            Adjoint PrepareBasisState_Reference(qs, bitString);
            AssertAllZero(qs);
        }
    }
}
