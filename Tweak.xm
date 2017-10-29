CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;
/*
@interface UILabel
    @property (nonatomic, strong, readwrite) UIColor *textColor;
@end
*/

%hook UILabel

-(void)layoutSubviews {
    self.textColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

%end

CGFloat textHue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
CGFloat textSaturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
CGFloat textBrightness = ( arc4random() % 128 / 256.0 ) + 0.5;

%hook UITextView

-(void)layoutSubviews {
    self.textColor = [UIColor colorWithHue:textHue saturation:textSaturation brightness:textBrightness alpha:1];
}

%end

CGFloat imageHue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
CGFloat imageSaturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
CGFloat imageBrightness = ( arc4random() % 128 / 256.0 ) + 0.5;

%hook UIImageView

-(void)layoutSubviews {
    self.tintColor = [UIColor colorWithHue:imageHue saturation:imageSaturation brightness:imageBrightness alpha:1];
}

%end

@interface SnooSpinnerView
    @property (nonatomic, strong, readwrite) UIColor *backgroundColor;
@end

CGFloat snooHue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
CGFloat snooSaturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
CGFloat snooBrightness = ( arc4random() % 128 / 256.0 ) + 0.5;

%hook SnooSpinnerView

-(void)layoutSubviews {
    self.backgroundColor = [UIColor colorWithHue:snooHue saturation:snooSaturation brightness:snooBrightness alpha:1];
}

%end


