//
//  TeamMember.h
//  Team
//
//  Created by Tomasz Rej on 09/03/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TeamMember : NSObject

@property (nonatomic, strong) NSString *name;

@property (assign) int age;

@property (assign) int magicNumber;

- (instancetype) initWithAge: (int) age andName: (NSString *) name;

- (void) printNameAndAge;

@end

NS_ASSUME_NONNULL_END
