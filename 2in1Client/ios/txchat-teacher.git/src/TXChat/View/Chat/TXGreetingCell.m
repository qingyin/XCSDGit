//
//  TXGreetingCell.m
//  TXChatParent
//
//  Created by gaoju on 12/28/16.
//  Copyright © 2016 xcsd. All rights reserved.
//

#import "TXGreetingCell.h"
#import "UIImage+Rotate.h"
#import "UIColor+Hex.h"

@interface TXGreetingCell ()

@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) UILabel *titlLbl;

@property (nonatomic, strong) UILabel *textLbl;

@property (nonatomic, strong) UIButton *startBtn;

@end

@implementation TXGreetingCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI {
    
    self.backgroundColor = [UIColor whiteColor];
    self.imageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_imageView];
    
    self.imageView.frame = self.contentView.bounds;
    
    [self.contentView addSubview:self.titlLbl];
    [self.contentView addSubview:self.textLbl];
}

- (void)setIndex:(NSInteger)index {
    _index = index;
    
    UIImage *image = [UIImage mainBundleImage:[NSString stringWithFormat:@"Greeting_0%ld", index]];
    
    self.imageView.image = image;
    
    switch (index) {
        case 1:
            self.startBtn.hidden = YES;
            self.titlLbl.text = @"游戏、作业";
            self.textLbl.text = @"让你的孩子玩出好成绩";
            break;
        case 2:
            self.startBtn.hidden = YES;
            self.titlLbl.text = @"王辉课堂";
            self.textLbl.text = @"知名专家做阵，为教育孩子传道解惑";
            break;
        case 3:
            self.startBtn.hidden = YES;
            self.titlLbl.text = @"测试";
            self.textLbl.text = @"帮助您和孩子全面了解自身";
            break;
        case 4:
            self.startBtn.hidden = NO;
            self.titlLbl.text = @"班级通讯";
            self.textLbl.text = @"老师和家长、学生的互动园地";
            break;
        default:
            break;
    }
}

- (UILabel *)titlLbl {
    if (!_titlLbl) {
        _titlLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 51, kScreenWidth, 29)];
        _titlLbl.font = [UIFont systemFontOfSize:29];
        _titlLbl.textAlignment = NSTextAlignmentCenter;
        [_titlLbl setTextColor:RGBCOLOR(83, 83, 83)];
    }
    
    return _titlLbl;
}

- (UILabel *)textLbl {
    if (!_textLbl) {
        _textLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, self.titlLbl.maxY + 20, kScreenWidth, 18)];
        _textLbl.font = [UIFont systemFontOfSize:17];
        _textLbl.textAlignment = NSTextAlignmentCenter;
        _textLbl.textColor = RGBCOLOR(149, 149, 149);
    }
    return _textLbl;
}

- (UIButton *)startBtn {
    if (!_startBtn) {
        
        _startBtn = [[UIButton alloc] init];
        _startBtn.frame = CGRectMake((kScreenWidth - 128.5) / 2, kScreenHeight - 88, 128.5, 39.5);
        _startBtn.layer.cornerRadius = 5;
        [_startBtn setTitle:@"立即体验" forState:UIControlStateNormal];
        [_startBtn setBackgroundColor:[UIColor colorWithHexRGB:@"FE714C"]];
        
        [_startBtn handleControlEvent:UIControlEventTouchUpInside withBlock:^(id sender) {
            
            if (self.startBlock) {
                self.startBlock();
            }
        }];
        
        [self.contentView addSubview:_startBtn];
    }
    
    return _startBtn;
}

@end
