//
//  ViewController.m
//  ObjCGettingStarted
//
//  Created by Jaylen on 9/2/22.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *stateIcon;
@property (weak, nonatomic) IBOutlet UILabel *labelState;
@property (weak, nonatomic) IBOutlet UIButton *buttonState;
- (IBAction)buttonStateAction;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Flip Switch";
    self.navigationController.navigationBar.prefersLargeTitles = NO;
    self.buttonState.layer.cornerRadius = 15;
    self.buttonState.titleLabel.text = @"Go Light";
    self.stateIcon.tintColor = UIColor.blackColor;
    
    [self setupInLightState];
}

- (void)setupInLightState {
    self.labelState.text = @"Now it's Light";
    self.labelState.textColor = UIColor.blackColor;
    
    self.stateIcon.image = [UIImage systemImageNamed: @"sun"];
    self.stateIcon.tintColor = UIColor.blackColor;
    
    self.buttonState.titleLabel.text = @"Go Dark";
    self.buttonState.tintColor = UIColor.whiteColor;
    self.buttonState.backgroundColor = UIColor.blackColor;
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleDarkContent];
}

- (void)setupInDarkState {
    self.labelState.text = @"Now it's Dark";
    self.labelState.textColor = UIColor.whiteColor;
    
    self.stateIcon.image = [UIImage systemImageNamed: @"moon.fill"];
    self.stateIcon.tintColor = UIColor.whiteColor;
    
    self.buttonState.titleLabel.text = @"Go Light";
    self.buttonState.tintColor = UIColor.blackColor;
    self.buttonState.backgroundColor = UIColor.whiteColor;
    
    self.view.backgroundColor = UIColor.blackColor;
    
    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleLightContent];
}


- (IBAction)buttonStateAction {
    [self setupInDarkState];
    NSLog(@"Working");
}
@end
