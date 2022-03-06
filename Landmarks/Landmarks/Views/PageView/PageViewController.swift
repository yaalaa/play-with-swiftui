//
//  PageViewController.swift
//  Landmarks
//
//  Created by lev on 06.03.2022.
//

import SwiftUI
import UIKit


struct PageViewController<Page: View> : UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        return pageViewController
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])],
            direction: .forward,
            animated : true
        )
    }
}
