//
//  PictureCollectionViewCell.h
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 8/10/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PictureCollectionViewCellDelegate <NSObject>

@end

@interface PictureCollectionViewCell : UICollectionViewCell

@property (assign, nonatomic) id <PictureCollectionViewCellDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIImageView *pictureCellImageView;
@property UIImageView *pictureImageView;
@property UIImage *picture;
@property UIColor *frameColor;

-(instancetype)initWithImage:(UIImage *)image andFrameColor:(UIColor *)color;

@end
