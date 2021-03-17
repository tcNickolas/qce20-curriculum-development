﻿namespace DeutschJozsaAlgorithm {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    // Phase oracle implementing a constant function f(x) = 0
    operation PhaseOracleZero (inputRegister : Qubit[]) : Unit {
        // Do nothing!
    }

    // Marking oracle implementing a balanced function f(x) = xₖ (the value of k-th bit)
    operation MarkingOracleKthBit (inputRegister : Qubit[], target : Qubit, k : Int) : Unit {
        Controlled X([inputRegister[k]], target);
    }

    operation ApplyMarkingOracleAsPhaseOracle (markingOracle : ((Qubit[], Qubit) => Unit), inputRegister : Qubit[]) : Unit {
        use target = Qubit();
        // Put the target into the |-⟩ state
        X(target);
        H(target);
        // Apply the marking oracle; since the target is in the |-⟩ state,
        // this will apply a -1 factor to the states that satisfy the oracle condition
        markingOracle(inputRegister, target);
        H(target);
        X(target);
    }
    
    operation IsFunctionConstant (nQubits : Int, phaseOracle : (Qubit[] => Unit)) : Bool {
        mutable isConstant = true;
        use qubits = Qubit[nQubits];
        // Apply the H gates, the oracle and the H gates again
        within {
            ApplyToEachA(H, qubits);
        } apply {
            phaseOracle(qubits);
        }
        // Measure all qubits
        let measurementResults = MultiM(qubits);
        // If any of measurement results are 1, the function is balanced
        for m in measurementResults {
            if m == One {
                set isConstant = false;
            }
        }
        return isConstant;
    }

    function ConstantOrBalanced (value : Bool) : String {
        return value ? "constant" | "balanced";
    }

    operation RunDeutschJozsaAlgorithm () : Unit {
        // for balanced function
        let phaseOracleKthBit = ApplyMarkingOracleAsPhaseOracle(MarkingOracleKthBit(_, _, 1), _);
        let isKthBitConstant = IsFunctionConstant(2, phaseOracleKthBit);
        Message($"f(x) = xk classified as {ConstantOrBalanced(isKthBitConstant)}");
    }
}
