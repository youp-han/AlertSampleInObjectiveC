//
//  ViewController.m
//  AlertMsgManager
//
//  Created by mike han on 2017. 8. 29..
//  Copyright © 2017년 mike han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btn_Pressed:(id)sender {
    
    //NSLog(@"ddd %ld", (long)[sender tag]);
    AlertManager * alert = [[AlertManager alloc] init];
    [self callMessage:[sender tag] :alert];
    
    
}

-(void)callMessage:(long)tagValue :(AlertManager*) alert{
    
    AlertManager * showAlert = alert;
    
    switch (tagValue) {
        case 1:
            [showAlert viewInformationAlert :@"title" :@"contents": self];
            break;
        case 2:
            [showAlert viewTimerAlert :@"title" :@"contents": self: 2.0];
        case 3:
            [showAlert viewOkCancelAlert :@"title" :@"contents": self];
        case 4:
            [showAlert viewOkCancelAlertFromBottom :@"title" :@"contents": self];
        default:
            [showAlert viewTextFieldAlert :@"title" :@"contents": self];
    }

    
}

@end
