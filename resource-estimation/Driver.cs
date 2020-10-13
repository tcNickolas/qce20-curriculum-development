using Microsoft.Quantum.Simulation.Simulators;
using System;

namespace DeutschJozsaAlgorithm
{
    class Driver
    {
        static void Main(string[] args)
        {
            ResourcesEstimator estimator = new ResourcesEstimator();
            RunDeutschJozsaAlgorithm.Run(estimator).Wait();
            Console.WriteLine(estimator.ToTSV());
        }
    }
}