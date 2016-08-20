// Last modified Jan 22, 2014

#include <stdlib.h>

@interface AVSystemController : NSObject
+ (id)sharedAVSystemController;
- (BOOL)setActiveCategoryVolumeTo:(float)arg1;
- (BOOL)getActiveCategoryVolume:(float*)arg1 andName:(id*)arg2;
@end

int main(int argc, char* argv[]) {
	AVSystemController *controller = [AVSystemController sharedAVSystemController];
	if (argc > 1) {
			float volume = atof(argv[1]); // atof returns 0 if it can't be converted into a float
			[controller setActiveCategoryVolumeTo:volume];
			printf("set current volume to %f\n", volume);
	}
	else {
		// no arguments present
		// display current category and volume
		float volume;
		NSString *name;
	  	[controller getActiveCategoryVolume:&volume andName:&name];
	  	printf("%s\n%f\n", [name UTF8String], volume);
	}
	return 0;
}
