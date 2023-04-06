//
//  TeamMember.m
//  Team
//
//  Created by Tomasz Rej on 09/03/2023.
//

#import "TeamMember.h"

@implementation TeamMember

- (instancetype) initWithAge: (int) age andName: (NSString *) name
{
  self = [super init];
  
  if (self)
  {
    self.age = age;
    self.name = name;
  }
  return self;
}

- (void) printNameAndAge;
{
  NSLog(@"%@", self.name);
  NSLog(@"%i", self.age);
}


@end
