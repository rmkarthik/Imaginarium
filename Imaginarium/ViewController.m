//
//  ViewController.m
//  Imaginarium
//
//  Created by Karthikeyan Ramanathan on 18/02/14.
//  Copyright (c) 2014 Karthik's App House. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *) segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/b/images/download/%@.jpg",segue.identifier]];
        ivc.title = segue.identifier;
        
        NSLog(@"Title is %@", segue.identifier);
    }
}

@end
