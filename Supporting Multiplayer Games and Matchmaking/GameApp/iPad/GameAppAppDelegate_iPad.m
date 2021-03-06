//
//  GameAppAppDelegate_iPad.m
//  GameApp
//
//  Created by Vandad Nahavandipoor on 11-03-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameAppAppDelegate_iPad.h"
#import "RootViewController_iPad.h"

@implementation GameAppAppDelegate_iPad

@synthesize navigationController;

- (BOOL)            application:(UIApplication *)application 
  didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
  
  
  RootViewController_iPad *controller = [[RootViewController_iPad alloc] initWithNibName:@"RootViewController_iPad"
                                                                        bundle:nil];
  UINavigationController *newNavigationController = 
  [[UINavigationController alloc] initWithRootViewController:controller];
  
  [controller release];
  
  navigationController = [newNavigationController retain];
  [newNavigationController release];
  
  [[super window] addSubview:navigationController.view];
  [[super window] makeKeyAndVisible];
  
  return YES;
}

- (void)dealloc
{
	[super dealloc];
}

@end
