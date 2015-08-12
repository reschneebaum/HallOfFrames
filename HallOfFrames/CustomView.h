//
//  CustomView.h
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 8/9/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

-(void)loadCustomView:(id)view onButtonTapped:(UIButton *)button;

@end

@interface CustomView : UIView

@property (assign, nonatomic) id <CustomViewDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@property (weak, nonatomic) IBOutlet UIButton *redButton;

@end
