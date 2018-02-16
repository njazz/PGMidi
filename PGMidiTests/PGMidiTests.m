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

    // TODO: mem leak!
    //
    /*
    @autoreleasepool {
        id o = [[PGMidi alloc] init];
        w = o;
    }

    XCTAssertNil(w);
     */
}

@end
