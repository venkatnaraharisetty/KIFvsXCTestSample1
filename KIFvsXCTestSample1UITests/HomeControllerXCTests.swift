//
//  KIFvsXCTestSample1UITests.swift
//  KIFvsXCTestSample1UITests
//
//  Created by Naraharisetty, Venkat on 12/27/18.
//  Copyright © 2018 Naraharisetty, Venkat. All rights reserved.
//

import XCTest

class KIFvsXCTestSample1UITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        let app = XCUIApplication()
        app.navigationBars.buttons["Home"].tap()
        
    }
 
    func testEmptyUsernameCase(){
        let app = XCUIApplication()
        app.tables.staticTexts["ViewControllerCell"].tap()
        XCTAssert(app.staticTexts["ViewControllerScreenLabel"].exists)
        app/*@START_MENU_TOKEN@*/.buttons["LoginButtonIdentifier"]/*[[".buttons[\"LoginButton\"]",".buttons[\"LoginButtonIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.alerts["Alert"].staticTexts["Please enter username"].exists)
        app.alerts["Alert"].buttons["OK"].tap()
    }
    
    func testEmptyPasswordCase(){
        let app = XCUIApplication()
        app.tables.staticTexts["ViewControllerCell"].tap()
        XCTAssert(app.staticTexts["ViewControllerScreenLabel"].exists)
        app/*@START_MENU_TOKEN@*/.textFields["UserNameFieldIdentifier"]/*[[".textFields[\"Username\"]",".textFields[\"UserNameFieldIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
       app/*@START_MENU_TOKEN@*/.textFields["UserNameFieldIdentifier"]/*[[".textFields[\"Username\"]",".textFields[\"UserNameFieldIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("tester")
        app/*@START_MENU_TOKEN@*/.buttons["LoginButtonIdentifier"]/*[[".buttons[\"LoginButton\"]",".buttons[\"LoginButtonIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.alerts["Alert"].staticTexts["Please enter password"].exists)
        app.alerts["Alert"].buttons["OK"].tap()
    }
    
    func testInvalidCredentialsCase(){
        let app = XCUIApplication()
        app.tables.staticTexts["ViewControllerCell"].tap()
        XCTAssert(app.staticTexts["ViewControllerScreenLabel"].exists)
        app/*@START_MENU_TOKEN@*/.textFields["UserNameFieldIdentifier"]/*[[".textFields[\"Username\"]",".textFields[\"UserNameFieldIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["UserNameFieldIdentifier"]/*[[".textFields[\"Username\"]",".textFields[\"UserNameFieldIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("bla")
        app.textFields["PasswordFieldIdentifier"].tap()
        app.textFields["PasswordFieldIdentifier"].typeText("bla")
        app/*@START_MENU_TOKEN@*/.buttons["LoginButtonIdentifier"]/*[[".buttons[\"LoginButton\"]",".buttons[\"LoginButtonIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.alerts["Alert"].staticTexts["Invalid credentials"].exists)
        app.alerts["Alert"].buttons["Cancel"].tap()
    }
    
    
    func testValidLoginCase() {
         let app = XCUIApplication()
        app.tables.staticTexts["ViewControllerCell"].tap()
        XCTAssert(app.staticTexts["ViewControllerScreenLabel"].exists)
        app/*@START_MENU_TOKEN@*/.textFields["UserNameFieldIdentifier"]/*[[".textFields[\"Username\"]",".textFields[\"UserNameFieldIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["UserNameFieldIdentifier"]/*[[".textFields[\"Username\"]",".textFields[\"UserNameFieldIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("test")
        app.textFields["PasswordFieldIdentifier"].tap()
        app.textFields["PasswordFieldIdentifier"].typeText("test")
        app/*@START_MENU_TOKEN@*/.buttons["LoginButtonIdentifier"]/*[[".buttons[\"LoginButton\"]",".buttons[\"LoginButtonIdentifier\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["LoggedInIdentifier"].exists)
        app.navigationBars.buttons["HomeNavigationButton"].tap()
        

    }

}
