//
//  AlertManager.m
//  Member Register
//
//  Created by mike han on 2017. 8. 6..
//  Copyright © 2017년 mike han. All rights reserved.


#import "AlertManager.h"

@implementation AlertManager
//@synthesize status;

-(void)viewInformationAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id {
    
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:contents
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             
                         }];
    [alert addAction:ok];
    [id presentViewController:alert animated:YES completion:nil];
    
    
    
}

-(void)viewTimerAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id :(float)time {
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:contents
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    [id presentViewController:alert animated:YES completion:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(time * NSEC_PER_SEC)),
                   dispatch_get_main_queue(), ^{
        [alert dismissViewControllerAnimated:YES completion:nil];
    });
    
    
}

//Toggle Status for Button Pressed

-(void)toggleStatus: (BOOL)check{
    _status=check;
    NSLog(@"toggleStatus, %d", _status);
    
}
-(void)viewOkCancelAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id {
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:contents
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             NSLog(@"OK pressed, %d", _status);
                             [self toggleStatus:true];

                         }];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 NSLog(@"cancel pressed, %d", _status);
                                 [self toggleStatus:false];

                             }];
    
    
    [alert addAction:ok];
    [alert addAction:cancel];
    [id presentViewController:alert animated:YES completion:nil];
    
}

-(void)viewOkCancelAlertFromBottom :(NSString *)title :(NSString *)contents :(UIViewController*) id {
    
    UIAlertController * view=   [UIAlertController
                                 alertControllerWithTitle:title
                                 message:contents
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             
                             NSLog(@"OK pressed, %d", _status);
                             [self toggleStatus:true];
                         }];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 NSLog(@"OK pressed, %d", _status);
                                 [self toggleStatus:true];
                             }];
    
    
    [view addAction:ok];
    [view addAction:cancel];
    [id presentViewController:view animated:YES completion:nil];
    
}

-(void)viewTextFieldAlert :(NSString *)title :(NSString *)contents :(UIViewController*) id{
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:title
                                  message:contents
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * action) {
                                                   NSLog(@"OK pressed, %d", _status);
                                                   [self toggleStatus:true];
                                                   
                                               }];
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action) {
                                                       NSLog(@"OK pressed, %d", _status);
                                                       [self toggleStatus:true];
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                   }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Username";
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    }];
    
    [id presentViewController:alert animated:YES completion:nil];
    
    
}

@end
