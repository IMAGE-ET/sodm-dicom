//
//  FirstViewController.swift
//  Dicom
//
//  Created by Anna Potempa on 04.01.2017.
//  Copyright © 2017 Anna Potempa. All rights reserved.
//

import UIKit
import GPUImage

class FirstViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func resetImage(_ sender: Any) {
        
        imageView.image = UIImage(named: "head")
    }
    
    @IBAction func firstButtonAction(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.sharpenFilter(inputImage: image)
    }
    
    @IBAction func secondButtonAction(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.gaussianBlurFilterForImage(inputImage: image)
    }
    
    @IBAction func thirdButtonAction(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.prewittEdgeDetectionFilter(inputImage: image)
    }
    
    @IBAction func applyErosion(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.erosionOfImage(inputImage: image)
    }
    @IBAction func applyOpening(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.openingImage(inputImage: image)
    }
    
    @IBAction func applyClosing(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.closingImage(inputImage: image)
    }
    
    @IBAction func applySkeletonization(_ sender: Any) {
        guard let image = imageView.image else {return}
        
        imageView.image = FilterManager.skeletonizationImage(inputImage: image)
    }

    @IBAction func sliderDidMoved(_ sender: UISlider) {
        let inputImage = UIImage(named: "head")
        
        let filter = GPUImageLuminanceThresholdFilter()
        filter.threshold = CGFloat(sender.value)
        
        let outputImage = filter.image(byFilteringImage: inputImage)
        imageView.image = outputImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "head")
    }



}

