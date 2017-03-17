//
//  ScroolPageViewController.swift
//  AppMobileswift3
//
//  Created by NDIAYE on 17/03/2017.
//  Copyright © 2017 NDIAYE. All rights reserved.
//

import UIKit

class ScroolPageViewController: UIViewController {

    @IBOutlet weak var PageScrollView: UIScrollView!
    var images = [UIImageView]()
    
    
//    do  action on loarding   frame
    override func viewDidLoad() {
        super.viewDidLoad()
//        var  ContentSizeWidth : CGFloat = 0.0
//        for I in  0...2 {
//             let  image = UIImage(named: "icon\(I).png")
//            let  imageView = UIImageView(image: image)
//            images.append(imageView)
//            
//            //        print(images.count)
//            
//            var NewX : GLfloat = 0.0
//            NewX = GLfloat(view.frame.midX  +  view.frame.size.width  *  CGFloat(I))
//            PageScrollView.addSubview(imageView)
//            imageView.frame = CGRect(x: 80, y: (view.frame.size.height)/2 - 50, width: 150 , height: 150 )
//            PageScrollView.contentSize = CGSize(width: ContentSizeWidth, height: view.frame.size.height)
//    
//        }
///Users/ndiaye/Documents/maanAppTest/AppMobileswift3/AppMobileswift3/ScroolPageViewController.swift:60:26: Binary operator '+=' cannot be applied to operands of type 'CGFloat' and 'GLfloat' (aka 'Float')
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
//    do action  after the  loarding
    override func viewDidAppear(_ animated: Bool) {
        
        
         var  ContentWidth : CGFloat?
         ContentWidth = 0.0
         let scrollWidth = PageScrollView.frame.size.width
        
        for I in  0...2 {
            let  image = UIImage(named: "icon\(I).png")
            let  imageView = UIImageView(image: image)
            images.append(imageView)
            //        print(images.count)
            var newX : CGFloat?
                newX = 0.0
            
            newX = scrollWidth - 50 / 2  +  scrollWidth   *  CGFloat(I)
            ContentWidth! += newX!
            
            PageScrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX! - 75, y: (PageScrollView.frame.size.height)/2 - 75, width: 150 , height: 150 )
            
        }
        PageScrollView.clipsToBounds = false
        
        PageScrollView.contentSize = CGSize(width: ContentWidth!, height: view.frame.size.height / 2)
        

    }
    

   
}
