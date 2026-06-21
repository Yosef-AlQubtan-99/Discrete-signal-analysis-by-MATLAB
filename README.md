# Discrete-signal-analysis-by-MATLAB

Part 1: Discrete-Time Signals & Systems (Time Domain) 
Given the following constant-coefficient difference equation representing a causal system: 
y[n] - 0.7y[n-1] + 0.1y[n-2] = x[n] + 0.5x[n-1] 

 
• Impulse Response: Use filter or impz to evaluate and plot the impulse response h[n] for n = 0 to 30. 
Use the stem function. 

• System Output: Generate an input sequence x[n] = cos(0.1*pi*n) for n = 0 to 50. Process it through 
the LTI system using the filter function to find the response output y[n]. 

• Plotting: Plot both vectors x[n] and y[n] on the same figure panel using stem. Include a clear title, 
appropriate axis labels, and an descriptive legend. 


Part 2: Frequency Domain & Z-Transform Analysis 

• Pole-Zero Map: Define your system numerator coefficient array 'b' and denominator array 'a'. Use 
the zplane(b, a) tool to plot the system poles and zeros on the complex plain. 

• Frequency Response: Use the freqz(b, a) command to compute and plot the magnitude and phase 
response profiles of this operational block.
