//
//  ViewController.m
//  数字变化
//
//  Created by company on 15/10/30.
//  Copyright © 2015年 company. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation ViewController {
    NSString *text;
    NSInteger flag;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _textFiled.delegate = self;
}

#pragma mark - tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    if (flag == 1) {
        cell.num = [text floatValue];
    } else {
        cell.label.text = @"0.00";
    }
    
    return cell;
}

#pragma mark - textFiled
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *toBeString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    if (toBeString.length > 10 && toBeString.length != 1) {
        return NO;
    }
    return YES;
}

- (IBAction)btnClick:(UIButton *)sender {
    flag = 1;
    text = _textFiled.text;
    [_tableView reloadData];
}


- (IBAction)zeroClick:(id)sender {
    flag = 2;
    _textFiled.text = nil;
    [_tableView reloadData];
}

@end
