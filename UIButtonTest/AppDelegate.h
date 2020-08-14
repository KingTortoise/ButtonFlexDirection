//
//  AppDelegate.h
//  UIButtonTest
//
//  Created by 金文武 on 2020/8/13.
//  Copyright © 2020 金文武. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

