//
//  SwipeViewController.m
//  Nutronix
//
//  Created by Luke Worley on 7/22/16.
//  Copyright © 2016 LJWProductions. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()
    - (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender;
    - (IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender;
    @property (weak, nonatomic) IBOutlet UIImageView *image;
    @property (weak, nonatomic) IBOutlet UILabel *count;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender {
    int index;
    if (sender.direction==UISwipeGestureRecognizerDirectionLeft){
        _image.image=[UIImage imageNamed:@"Chicken"];
        index++;
    }
    if (sender.direction==UISwipeGestureRecognizerDirectionRight){
        _image.image=[UIImage imageNamed:@"Beef"];
        index--;
    }
    NSString *counter = [NSString stringWithFormat:@"%d", index];
    _count.text = counter;
}

- (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender {
}
@end
