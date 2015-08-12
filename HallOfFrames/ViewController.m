//
//  ViewController.m
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 7/22/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import "ViewController.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate, PictureCollectionViewCellDelegate>

@property NSArray *pictures;
@property (weak, nonatomic) IBOutlet UICollectionView *pictureCollectionView;
@property (weak, nonatomic) IBOutlet CustomView *customView;
@property NSIndexPath *indexPath;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    PictureCollectionViewCell *image1 = [[PictureCollectionViewCell alloc] initWithImage:[UIImage imageNamed:@"cats"] andFrameColor:[UIColor blackColor]];
    PictureCollectionViewCell *image2 = [[PictureCollectionViewCell alloc] initWithImage:[UIImage imageNamed:@"poppies"] andFrameColor:[UIColor blackColor]];

    PictureCollectionViewCell *image3 = [[PictureCollectionViewCell alloc] initWithImage:[UIImage imageNamed:@"pallasCat"] andFrameColor:[UIColor blackColor]];

    PictureCollectionViewCell *image4 = [[PictureCollectionViewCell alloc] initWithImage:[UIImage imageNamed:@"nationalVelvet"] andFrameColor:[UIColor blackColor]];

    PictureCollectionViewCell *image5 = [[PictureCollectionViewCell alloc] initWithImage:[UIImage imageNamed:@"neckBrace"] andFrameColor:[UIColor blackColor]];


    self.pictures = @[image1, image2, image3, image4, image5];

    self.customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"creating cell...");
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCellID" forIndexPath:indexPath];
    PictureCollectionViewCell *image = [self.pictures objectAtIndex:indexPath.row];
    cell.delegate = self;
    cell.pictureCellImageView.image = image.picture;
    cell.backgroundColor = image.frameColor;

    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    self.customView.delegate = self;
    self.indexPath = indexPath;
    [self.view addSubview:self.customView];
    [self.view resignFirstResponder];
    self.customView.center = self.view.center;
}

-(void)loadCustomView:(CustomView *)view onButtonTapped:(UIButton *)button {
    PictureCollectionViewCell *object = [self.pictures objectAtIndex:self.indexPath.row];
    object.frameColor = button.backgroundColor;
    [self.pictureCollectionView reloadData];
    [self.customView removeFromSuperview];
}

@end
