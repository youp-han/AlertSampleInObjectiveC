//
//  AlertManager.h
//  Member Register
//
//  Created by mike han on 2017. 8. 6..
//  Copyright © 2017년 mike han. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertManager : UIViewController
@property BOOL status;


-(void)viewInformationAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id;

-(void)viewTimerAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id :(float)time;

-(void)viewOkCancelAlert:(NSString *)title :(NSString *)contents :(UIViewController*) id;

-(void)viewOkCancelAlertFromBottom :(NSString *)title :(NSString *)contents :(UIViewController*) id;

-(void)viewTextFieldAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id;

-(void)toggleStatus: (BOOL)check;


@end

