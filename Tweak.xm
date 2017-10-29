//Generate random colours
CGFloat hue = ( arc4random() % 256 / 256.0 );
CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;
CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;


%hook UILabel

-(void)layoutSubviews {
    self.textColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

%end
//We want to generate new random colours for different aspects, so use the same code but with different names.
CGFloat textHue = ( arc4random() % 256 / 256.0 );
CGFloat textSaturation = ( arc4random() % 128 / 256.0 ) + 0.5;
CGFloat textBrightness = ( arc4random() % 128 / 256.0 ) + 0.5;

%hook UITextView
//Change the colour of post titles
-(void)layoutSubviews {
    self.textColor = [UIColor colorWithHue:textHue saturation:textSaturation brightness:textBrightness alpha:1];
}

%end

CGFloat imageHue = ( arc4random() % 256 / 256.0 );
CGFloat imageSaturation = ( arc4random() % 128 / 256.0 ) + 0.5;
CGFloat imageBrightness = ( arc4random() % 128 / 256.0 ) + 0.5;

%hook UIImageView
//Change the tint of UIImageView. Most buttons in the Reddit app use UIImageView
-(void)layoutSubviews {
    self.tintColor = [UIColor colorWithHue:imageHue saturation:imageSaturation brightness:imageBrightness alpha:1];
}

%end

@interface SnooSpinnerView
    @property (nonatomic, strong, readwrite) UIColor *backgroundColor;
@end

CGFloat snooHue = ( arc4random() % 256 / 256.0 );
CGFloat snooSaturation = ( arc4random() % 128 / 256.0 ) + 0.5;
CGFloat snooBrightness = ( arc4random() % 128 / 256.0 ) + 0.5;
//Change the background colour of the spinner
%hook SnooSpinnerView

-(void)layoutSubviews {
    self.backgroundColor = [UIColor colorWithHue:snooHue saturation:snooSaturation brightness:snooBrightness alpha:1];
}

%end


