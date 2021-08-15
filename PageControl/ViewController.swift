//
//  ViewController.swift
//  PageControl
//
//  Created by Kim Jae Hyeon on 2021/08/15.
//

import UIKit

var images = ["image1.jpeg","image2.jpeg","image3.jpeg","image4.jpeg","image5.jpeg","image6.jpeg","image7.jpeg"]

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.white
        imgView.image = UIImage(named: images[0])
    }
    
    @IBAction func pageControl(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    

}

