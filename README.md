# Stellar Spectral Analysis

## Overview

This MATLAB script performs a spectral analysis of stellar data to determine the radial velocities of stars using the Doppler effect. By identifying shifts in the H-alpha absorption line (rest wavelength = 656.28 nm), the code classifies stars as either redshifted (moving away from Earth) or blueshifted (moving towards Earth).

## Dataset

The script requires the `starData.mat` file, which contains:

- **`spectra`**: A `357 x 7` matrix representing the intensity spectra of 7 stars across 357 wavelength points.
- **`lambda`**: A `357 x 1` vector of wavelength values in nanometers, ranging from 630.02 nm to 679.00 nm with an increment of 0.14 nm.

## Scientific Background

The Doppler effect causes shifts in the wavelength of light from moving objects. A redshift indicates a star is moving away, while a blueshift suggests motion towards Earth. This shift is quantified by the redshift parameter \(z\) and converted to radial velocity using:

$$
    z = \frac{\lambda_{observed}}{\lambda_{rest}} - 1
$$

$$
    v = z \times c
$$

Where:

- \(\lambda_{observed}\) = observed wavelength of the H-alpha line
- \(\lambda_{rest} = 656.28\) nm (rest wavelength of H-alpha)
- \(c = 299,792.458\) km/s (speed of light)

## Features

- Plots spectral data with wavelength vs. intensity.
- Identifies the H-alpha absorption line for each star.
- Calculates redshift and radial velocity.
- Classifies stars based on motion:
  - **Dashed lines**: Blueshifted (approaching Earth)
  - **Thick lines**: Redshifted (receding from Earth)
- Lists stars moving away from Earth.

## Usage

1. Load the dataset:
   ```matlab
   load starData
   ```
2. Run the script to visualize spectra and analyze radial velocities.
3. The plot will display spectral lines with color-coded indicators based on motion.
4. The variable `movaway` will contain names of stars with positive radial velocities.

## Example Visualization

- **X-axis:** Wavelength (nm)
- **Y-axis:** Intensity
- **Markers:** Red squares indicate detected H-alpha lines.

## Dependencies

- MATLAB R2021a or later
- No external toolboxes required


