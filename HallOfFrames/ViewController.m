//
//  ViewController.m
//  HallOfFrames
//
//  Created by Rachel Schneebaum on 7/22/15.
//  Copyright (c) 2015 Rachel Schneebaum. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property NSArray *pictures;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    Picture *cats = [[Picture alloc] initWithImage:[UIImage imageNamed:@"cats"] withFrameColor:[UIColor grayColor]];
    Picture *pallasCat = [[Picture alloc] initWithImage:[UIImage imageNamed:@"poppies"] withFrameColor:[UIColor redColor]];
    Picture *poppies = [[Picture alloc] initWithImage:[UIImage imageNamed:@"pallasCat"] withFrameColor:[UIColor brownColor]];
    Picture *nationalVelvet = [[Picture alloc] initWithImage:[UIImage imageNamed:@"nationalVelvet"] withFrameColor:[UIColor purpleColor]];
    Picture *neckBrace = [[Picture alloc] initWithImage:[UIImage imageNamed:@"neckBrace"] withFrameColor:[UIColor blueColor]];

    self.pictures = @[cats, pallasCat, poppies, nationalVelvet, neckBrace];
    NSLog(@"viewDidLoad ending");
}



-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"creating cell...");
    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCellID" forIndexPath:indexPath];

    Picture *picture = [self.pictures objectAtIndex:indexPath.row];
    cell.pictureCellImageView.image = picture.image;

    return cell;

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"pictures.count == %li", self.pictures.count);
    return self.pictures.count;
}


@end
