//
//  BBMetalDilationFilter.swift
//  BBMetalImage
//
//  Created by Kaibo Lu on 9/18/19.
//  Copyright © 2019 Kaibo Lu. All rights reserved.
//

/// Find the maximum value of the red channel in the range of radius, and set the maximum value to the current pixel.
public class BBMetalDilationFilter: BBMetalBaseFilter {
    /// Radius in pixel
    var pixelRadius: Int
    
    public init(pixelRadius: Int = 0) {
        self.pixelRadius = pixelRadius
        super.init(kernelFunctionName: "dilationKernel")
    }
    
    public override func updateParameters(forComputeCommandEncoder encoder: MTLComputeCommandEncoder) {
        encoder.setBytes(&pixelRadius, length: MemoryLayout<Int>.size, index: 0)
    }
}
