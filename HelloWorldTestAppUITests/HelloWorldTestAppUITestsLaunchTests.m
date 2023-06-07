//
//  HelloWorldTestAppUITestsLaunchTests.m
//  HelloWorldTestAppUITests
//
//  Created by Arunachalam Packirisamy on 2/23/23.
//

#import <XCTest/XCTest.h>

@interface HelloWorldTestAppUITestsLaunchTests : XCTestCase

@end

@implementation HelloWorldTestAppUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

-(void)testHelloWorld {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    XCUIElement *textFieldStaticText = app/*@START_MENU_TOKEN@*/.staticTexts[@"Text Field"]/*[[".buttons[@\"Text Field\"].staticTexts[@\"Text Field\"]",".staticTexts[@\"Text Field\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [textFieldStaticText tap];
    
    XCUIElement *backButton = app.navigationBars[@"HelloWorldTestApp.TextViewFieldView"].buttons[@"Back"];
    [backButton tap];
    [textFieldStaticText tap];
    [[[[[[[[app.windows childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeTextField].element tap];
    [[[[[[[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [backButton tap];
    
    XCUIApplication *app2 = app;
    [app2/*@START_MENU_TOKEN@*/.staticTexts[@"TableView"]/*[[".buttons[@\"TableView\"].staticTexts[@\"TableView\"]",".staticTexts[@\"TableView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElementQuery *tablesQuery = app2.tables;
    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"Cell 4"]/*[[".cells.staticTexts[@\"Cell 4\"]",".staticTexts[@\"Cell 4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"Cell 9"]/*[[".cells.staticTexts[@\"Cell 9\"]",".staticTexts[@\"Cell 9\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ swipeUp];
    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"Cell 16"]/*[[".cells.staticTexts[@\"Cell 16\"]",".staticTexts[@\"Cell 16\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    
    XCUIElement *cell21StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"Cell 21"]/*[[".cells.staticTexts[@\"Cell 21\"]",".staticTexts[@\"Cell 21\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    /*@START_MENU_TOKEN@*/[cell21StaticText swipeLeft];/*[["cell21StaticText","["," swipeUp];"," swipeLeft];"],[[[-1,0,1]],[[1,3],[1,2]]],[0,0]]@END_MENU_TOKEN@*/
    [cell21StaticText swipeUp];
    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"Cell 23"]/*[[".cells.staticTexts[@\"Cell 23\"]",".staticTexts[@\"Cell 23\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    /*@START_MENU_TOKEN@*/[tablesQuery.staticTexts[@"Cell 24"] swipeLeft];/*[["tablesQuery",".cells.staticTexts[@\"Cell 24\"]","["," swipeUp];"," swipeLeft];",".staticTexts[@\"Cell 24\"]"],[[[-1,0,1]],[[-1,5,2],[-1,1,2]],[[2,4],[2,3]]],[0,0,0]]@END_MENU_TOKEN@*/
    [tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"Cell 25"]/*[[".cells.staticTexts[@\"Cell 25\"]",".staticTexts[@\"Cell 25\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ swipeUp];
    [app.navigationBars[@"ListTableView"].buttons[@"Back"] tap];

}

@end

