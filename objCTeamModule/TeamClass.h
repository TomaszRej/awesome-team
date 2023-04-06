//
//  TeamClass.h
//  Team
//
//  Created by Tomasz Rej on 09/03/2023.
//

#import <Foundation/Foundation.h>
#import "TeamMember.h"


#define RAND_FROM_TO(min, max) (min + arc4random_uniform(max - min + 1))


NS_ASSUME_NONNULL_BEGIN

@interface TeamClass : NSObject
{
  int teamMembersCount;
}



//@property (assign) int age;

@property (nonatomic, retain) NSMutableArray<TeamMember *> *teamMembers;



//- (void) registerMember: (TeamMember *) teamMember;
- (void) registerMemberWithAge: (int) age andName: (NSString *) name;

- (int) getMembersMagicNumberWithName: (NSString *) name;

- (void) printTeamMembersNamesAndAge;


- (int) getTeamSize;


- (NSMutableArray <TeamMember *> *) getTeam;


//@property (nonatomic, strong) (NSMutableArray *) members;

@end

NS_ASSUME_NONNULL_END
