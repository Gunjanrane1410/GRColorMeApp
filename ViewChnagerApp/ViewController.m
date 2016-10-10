//
//  ViewController.m
//  ViewChnagerApp
//
//  Created by Student P_07 on 12/09/16.
//  Copyright © 2016 gunchai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    
    myBlueLabel=[[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding,(screenHeight-125), KAllElementHeight,KAllElementHeight)];
    [myBlueLabel setBackgroundColor:[UIColor blueColor]];
   [ myBlueLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:myBlueLabel];
    
    
    myGreenLabel=[[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding,(screenHeight-105-2*KVerticalPadding-(KAllElementHeight)), KAllElementHeight,KAllElementHeight)];
    [myGreenLabel setBackgroundColor:[UIColor greenColor]];
    [ myGreenLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:myGreenLabel];
    
    myRedLabel=[[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding,(screenHeight-105-3*KVerticalPadding-(2*KAllElementHeight)), KAllElementHeight,KAllElementHeight)];
    [myRedLabel setBackgroundColor:[UIColor redColor]];
    [ myRedLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:myRedLabel];
    
    blueSlider=[[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125, 300, KAllElementHeight)];
    [blueSlider setBackgroundColor:[UIColor blueColor]];
    
    
    [blueSlider addTarget:self action:@selector(blueSlider:) forControlEvents:UIControlEventValueChanged];
    myBlueLabel.text= [NSString stringWithFormat:@"%0.2f",blueSlider.value];
    
    [self.view addSubview:blueSlider];
    
    greenSlider=[[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125-KAllElementHeight-KVerticalPadding, 300, KAllElementHeight)];
    [greenSlider setBackgroundColor:[UIColor greenColor]];
    [greenSlider addTarget:self action:@selector(greenSlider:) forControlEvents:UIControlEventValueChanged];
    myGreenLabel.text= [NSString stringWithFormat:@"%0.2f",greenSlider.value];


    [self.view addSubview:greenSlider];
    
    redSlider=[[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125-2*KAllElementHeight-2*KVerticalPadding, 300, KAllElementHeight)];
    [redSlider setBackgroundColor:[UIColor redColor]];
    [redSlider addTarget:self action:@selector(redSlider:) forControlEvents:UIControlEventValueChanged];
    myRedLabel.text= [NSString stringWithFormat:@"%0.2f",redSlider.value];


   [self.view addSubview:redSlider];
    
    
    //UIColor *newColor = [UIColor colorWithRed:<#(CGFloat)#> green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>];
    


}


-(void) blueSlider:(id) sender{
    
        UISlider *localRedSlider = sender;
    
    self.view.backgroundColor= [UIColor colorWithRed:redSlider.value green:greenSlider.value blue:localRedSlider.value alpha:1];
    myBlueLabel.text= [NSString stringWithFormat:@"%0.2f",blueSlider.value];

    [self colorMe];

}

-(void) greenSlider:(id) sender{
    
    UISlider *localGreenSlider = sender;
    
    self.view.backgroundColor= [UIColor colorWithRed:redSlider.value green:localGreenSlider.value blue:blueSlider.value alpha:1];
    myGreenLabel.text= [NSString stringWithFormat:@"%0.2f",greenSlider.value];

    [self colorMe];

}


-(void) redSlider:(id) sender{
    
    UISlider *localRedSlider = sender;
    
    self.view.backgroundColor= [UIColor colorWithRed:localRedSlider.value green:greenSlider.value blue:blueSlider.value alpha:1];
    myRedLabel.text= [NSString stringWithFormat:@"%0.2f",redSlider.value];

    [self colorMe];
}


-(void) colorMe{
    self.view.backgroundColor=[ UIColor colorWithRed:redSlider.value green:greenSlider.value blue:blueSlider.value alpha:1];
}


                     
                     
    
    
    
    


    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
