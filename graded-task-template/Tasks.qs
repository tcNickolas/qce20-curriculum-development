// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

namespace Quantum.Kata.Superposition {

    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;


    //////////////////////////////////////////////////////////////////
    // Welcome!
    //////////////////////////////////////////////////////////////////

    // Each task is wrapped in one operation preceded by the description of the task.
    // Each task (except tasks in which you have to write a test) has a unit test associated with it,
    // which initially fails. Your goal is to fill in the blank (marked with // ... comment)
    // with some Q# code to make the failing test pass.

    // Task 1.1. Prepare basis state
    // Input: 
    //     1) an array of qubits in |0⟩ state.
    //     2) a bit string representing the basis state
    //        [true, false] = |10⟩
    // Goal: Prepare the given basis state on these qubits.
    operation PrepareBasisState (qs : Qubit[], bitString : Bool[]) : Unit {
        // ...
    }
}
