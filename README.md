# Median Filter MATLAB Implementation

This MATLAB code applies a median filter to remove noise from a grayscale image. The filter operates by replacing each pixel value with the median value of its neighboring pixels within a defined radius.

A Median Filter is a digital filtering technique commonly used to remove noise from an image or a signal. Unlike other linear filters (e.g., mean filter), the Median Filter replaces each pixel value with the median value of the neighborhood pixels. This property makes it particularly effective in removing impulse noise, such as salt and pepper noise, while preserving the edges and fine details in the image.

Here's how the Median Filter works:

1. Window Scanning: The filter traverses through the entire image pixel by pixel.

2. Neighborhood Selection: For each pixel, a neighborhood window centered around the pixel is defined. The size of this window is determined by a parameter called the filter radius.

3. Median Calculation: The pixel value of the current position is replaced by the median value of the pixel intensities within the neighborhood window.

4. Edge Handling: At image edges where the neighborhood window extends beyond the image boundary, the filter typically handles this by considering only the valid pixel values within the image boundary.

## Usage

1. Run the MATLAB code in your MATLAB environment.
2. The code reads a color image ("lena.png") and converts it to grayscale.
3. Salt and pepper noise is then added to the grayscale image.
4. The median filter algorithm is applied, and the resulting image is displayed.

## Requirements

- MATLAB R2016b or newer
