//
//  ParcelInvoiceMaker - ParcelOrderViewController.swift
//  Created by yagom.
//  Copyright © yagom. All rights reserved.
//

import UIKit

class ParcelOrderViewController: UIViewController, ParcelOrderViewDelegate {
    private let parcelProcessor: ParcelOrderProcessor
    
    init(parcelProcessor : ParcelOrderProcessor) {
        self.parcelProcessor = parcelProcessor
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = "택배보내기"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func parcelOrderMade(_ parcelInformation: ParcelInformation) {
        parcelProcessor.process(parcelInformation: parcelInformation)
    }
    
    override func loadView() {
        view = ParcelOrderView(delegate: self)
    }
    
}

