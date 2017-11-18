//
//  PGMidiTests.m
//  PGMidiTests
//
//  Created by Alex on 18/11/2017.
//

#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>
#import "PGMidi.h"

@interface PGMidiTests : XCTestCase

@end

@implementation PGMidiTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDellocations
{

    __weak id w = nil;

    @autoreleasepool {
        id o = [[PGMidiSource alloc] init];
        w = o;
    }

    XCTAssertNil(w);

    @autoreleasepool {
        id o = [[PGMidiDestination alloc] init];
        w = o;
    }

    XCTAssertNil(w);

    @autoreleasepool {
        id o = [[PGMidiConnection alloc] init];
        w = o;
    }

    XCTAssertNil(w);

    //
    @autoreleasepool {
        id o = [[PGMidi alloc] init];
        w = o;
    }

    XCTAssertNil(w);
}

@end
