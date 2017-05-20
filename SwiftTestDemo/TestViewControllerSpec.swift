//
//  TestViewControllerSpec.swift
//  SwiftTestDemo
//
//  Created by Lawrence Tan on 20/5/17.
//  Copyright © 2017 Lawrey. All rights reserved.
//

import UIKit
import Quick
import Nimble
@testable import SwiftTestDemo

class TestViewControllerSpec: QuickSpec {

    override func spec() {
        fdescribe("TestViewController") {
            var subject: TestViewController!
            
            beforeEach {
                subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
                
                _ = subject.view
            }
            
            context("when the view loaded") {
                it("should have the right label with the correct text") {
                    expect(subject.titleLabel.text).to(equal("Medium"))
                }
            }
        }
    }
    
}
