//
//  Model.h
//  P.A.W.S.
//
//  Created by Keanu Kerr on 1/29/13.
//  Copyright 2013 West Shore J/S High School. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Model : NSObject {
  NSArray *firstDetail;
  NSArray *secondDetail;
}

@property (nonatomic, retain) NSArray *firstDetail;
@property (nonatomic, retain) NSArray *secondDetail;

@end
