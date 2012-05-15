//
//  Package.h
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Package : NSObject{
    bool onTime;
    NSString* name;
    NSString* origin;
    NSString* destination;
    NSString* eta;
    NSString* service;
    float type;
}

@property(readwrite, strong) NSString* name;
@property(readwrite, strong) NSString* origin;
@property(readwrite, strong) NSString* destination;
@property(readwrite, strong) NSString* eta;
@property(readwrite, strong) NSString* service;
@property(readwrite) float type;
@property(readwrite) bool onTime;



@end
