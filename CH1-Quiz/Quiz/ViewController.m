//
//  ViewController.m
//  Quiz
//
//  Created by YoungWhan Song on 11/25/14.
//  Copyright (c) 2014 BNC Software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.questions = @[@"From what is cognac made?",
                       @"What is 7+7?",
                       @"What is the capital of Vermont?"];
    
    self.answers = @[@"Grapes",
                     @"14",
                     @"Montpelier"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}

@end
