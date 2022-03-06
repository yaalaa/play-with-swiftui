//
//  PageControl.swift
//  Landmarks
//
//  Created by lev on 06.03.2022.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged
        )
        
        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var parent: PageControl
        
        init(_ pageControl: PageControl) {
            parent = pageControl
        }
        
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            parent.currentPage = sender.currentPage
        }
    }
}
