//
//  TeamClass.m
//  Team
//
//  Created by Tomasz Rej on 09/03/2023.
//

#import "TeamClass.h"



@implementation TeamClass

- (void) printTeamMembersNamesAndAge {
  
  for (TeamMember *member in self.teamMembers)
  {
    [member printNameAndAge];
  }
}

- (int) getMembersMagicNumberWithName: (NSString *) name {
  
  for (TeamMember *member in self.teamMembers)
  {
    if (member.name == name)
      return member.magicNumber;
  }
  
  return -1;
  
}


- (int) getTeamSize {
  return (int)[self.teamMembers count];
}



//- (NSMutableArray <TeamMember *> *) getTeam
//{
//  return self.teamMembers;
//}

- (NSMutableArray <TeamMember *> *) getTeam
{
  return self.teamMembers;
}

- (void) registerMemberWithAge: (int) age andName: (NSString *) name
{
  
  NSLog(@"count przed interface scoup: %i",  teamMembersCount);
  
  
  teamMembersCount = teamMembersCount + 1;
  
  
  NSLog(@"count po interface scoup: %i",  teamMembersCount);
  
  
  TeamMember *teamMember = [[TeamMember alloc] initWithAge: age andName: name];
  
  teamMember.magicNumber = RAND_FROM_TO(1,11);
  
  int count = (int) [self.teamMembers count];
  
  if (count > 0) {
    
    NSMutableArray *tm = [NSMutableArray arrayWithObjects: teamMember, nil];
    
    NSString *member;
    
    for (member in self.teamMembers)
      [tm addObject: member];
    
    self.teamMembers = tm;
  } else
  {
    self.teamMembers = [NSMutableArray arrayWithObjects: teamMember, nil];;
  }
}


- (void ) removeWithName: (NSString *)name;
{
  
  NSLog(@"N:::%@", name);
  
  NSMutableArray *teamMembers = [NSMutableArray arrayWithArray: self.teamMembers];
  //  TeamMember *member;
  //  for (member in self.teamMembers)
  //    [teamMembers addObject: member];
  
  
  
  for(TeamMember *member in self.teamMembers)
  {
    if(member.name == name)
    {
      [teamMembers removeObject: member];
      break;
    }
  }
}

@end
