//
//  FilterManager.swift
//  Dicom
//
//  Created by Anna Potempa on 04.01.2017.
//  Copyright © 2017 Anna Potempa. All rights reserved.
//

import UIKit
import GPUImage

class FilterManager {
    
    class func erosionOfImage(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageErosionFilter()
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func openingImage(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageOpeningFilter()
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func closingImage(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageClosingFilter()
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func skeletonizationImage(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageSobelEdgeDetectionFilter()
        filter.edgeStrength = 0.7
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func transformImage(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageTransformFilter()
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func gaussianBlurFilterForImage(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageGaussianBlurFilter()
        filter.blurPasses = 2

        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func prewittEdgeDetectionFilter(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImagePrewittEdgeDetectionFilter()
        filter.edgeStrength = 3.0
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func convolutionFilter(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImage3x3ConvolutionFilter()
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func bilateralFilter(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageBilateralFilter()
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }
    
    class func sharpenFilter(inputImage: UIImage) -> UIImage? {
        
        let filter = GPUImageSharpenFilter()
        filter.sharpness = 5
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        
        return outputImage
    }

}
