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
    @property (weak,nonatomic) NSArray *imageNames;
    @property NSUInteger index;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _index = 0;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"FoodProperties" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    _imageNames = dict[@"Images"];
    _image.image = [UIImage imageNamed:[_imageNames objectAtIndex: _index]];
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
    
    _index++;
    NSInteger max = [_imageNames count];
    //NSString *maxString = [NSString  stringWithFormat:@"d", max];
   // NSLog(maxString);
    if (_index > [_imageNames count]) {
        _index = 0;
    }
    _image.image=[UIImage imageNamed:[_imageNames objectAtIndex: _index]];
}

- (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender {
    if (_index != 0) {
        _index--;
    }
    else{
        _index = [_imageNames count];
    }
  
    _image.image = [UIImage imageNamed:[_imageNames objectAtIndex:_index]];
    
}

@end
