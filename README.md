# KIFvsXCTestSample1
This Project consists of UI tests using both KIF and XCTest.
### Note
This is a small personal project which is created only for enhancing my skills. While working for my Job, I did not get a chance to write UI tests, so wanted to learn it. As most of companies still use KIF as their primary UI testing method, I created tests using both KIF and XCTest.

## KIF(Keep It Functional)

KIF is an iOS integration test framework. It allows for easy automation of iOS apps by leveraging the accessibility attributes. You can find complete info in below link: 
https://github.com/kif-framework/KIF

Steps followed:
1) Install Pod file
2) Create new Unit testing target for KIF
3) Create a Bridging Header file(as KIF is done in Objective-C and I planned to use it for Swift) and add #import <KIF/KIF.h>
4) Add a swift file in the target and add below code. 
```
extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
} 
```
5) Start writing test cases

## XCTest:
XCTest provides the framework for UI testing capabilities, integrated with Xcode. Creating and using UI testing expands upon what you know about using XCTest and creating unit tests.
I follwed this tutorial: https://www.raywenderlich.com/3619-207-xcode-ui-testing
