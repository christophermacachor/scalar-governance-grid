import numpy as np
from scipy.constants import c, epsilon_0

def macachor_thrust(frequency, grad_phi, volume, bandwidth=None):
    """
    Computes thrust per Macachor's theorem.
    
    Args:
        frequency: Operating frequency (Hz)
        grad_phi: Scalar field gradient (V/m)
        volume: Cavity volume (m³)
        bandwidth: Resonance bandwidth (Hz). Default=1%