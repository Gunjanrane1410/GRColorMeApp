//
//  ViewController.h
//  ViewChnagerApp
//
//  Created by Student P_07 on 12/09/16.
//  Copyright © 2016 gunchai. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KAllElementHeight 60.0
#define KHorizontalPadding 20.0
#define KVerticalPadding 20.0

@interface ViewController : UIViewController
{
    UILabel *myRedLabel;
    UISlider *redSlider;
     UILabel *myGreenLabel;
    UISlider *greenSlider;

     UILabel *myBlueLabel;
    UISlider *blueSlider;

    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat slider;
}

@end

