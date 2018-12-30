//
//  HomeControllerKIFTests.swift
//  UITestsUsingKIF
//
//  Created by Naraharisetty, Venkat on 12/27/18.
//  Copyright © 2018 Naraharisetty, Venkat. All rights reserved.
//

import XCTest

class HomeControllerKIFTests: KIFTestCase {
    
    override func afterEach() {
        tester().tapView(withAccessibilityLabel: "Home")
    }

    
    func testEmptyUsernameCase() {
        tester().tapView(withAccessibilityLabel: "ViewControllerCell")
        tester().waitForView(withAccessibilityLabel: "ViewControllerScreenLabel")
        //tester().tapView(withAccessibilityLabel: "UserNameFieldLabel")
        //tester().enterText("test", intoV: "UserNameFieldLabel")
        tester().tapView(withAccessibilityLabel: "LoginButton")
        tester().waitForView(withAccessibilityLabel: "Please enter username")
        tester().tapView(withAccessibilityLabel: "OK")
        //tester().tapView(withAccessibilityLabel: "Home")
        //tester().enterText("test", intoViewWithAccessibilityLabel: "UserNameFieldLabel")
    }
    
    func testEmptyPasswordCAse(){
        tester().tapView(withAccessibilityLabel: "ViewControllerCell")
        tester().waitForView(withAccessibilityLabel: "ViewControllerScreenLabel")
        tester().enterText("test", intoViewWithAccessibilityLabel: "UserNameFieldLabel")
        tester().tapView(withAccessibilityLabel: "LoginButton")
        tester().waitForView(withAccessibilityLabel: "Please enter password")
        tester().tapView(withAccessibilityLabel: "OK")

    }
    
    func testInvalidCredentials() {
        tester().tapView(withAccessibilityLabel: "ViewControllerCell")
        tester().waitForView(withAccessibilityLabel: "ViewControllerScreenLabel")
        tester().enterText("bla", intoViewWithAccessibilityLabel: "UserNameFieldLabel")
        tester().enterText("bla", intoViewWithAccessibilityLabel: "PasswordFieldLabel")
        tester().tapView(withAccessibilityLabel: "LoginButton")
        tester().waitForView(withAccessibilityLabel: "Invalid credentials")
        tester().tapView(withAccessibilityLabel: "Cancel")

    }
    
    func testValidCredentials() {
        tester().tapView(withAccessibilityLabel: "ViewControllerCell")
        tester().waitForView(withAccessibilityLabel: "ViewControllerScreenLabel")
        tester().enterText("test", intoViewWithAccessibilityLabel: "UserNameFieldLabel")
        tester().enterText("test", intoViewWithAccessibilityLabel: "PasswordFieldLabel")
        tester().tapView(withAccessibilityLabel: "LoginButton")
        tester().waitForView(withAccessibilityLabel: "LoggedInLabel")
        tester().tapView(withAccessibilityLabel: "View Controller")
    }
    

}
