#import <Foundation/Foundation.h>

int main ()
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSURL *url = [NSURL URLWithString:@"https://ipecho.net/plain"];
  NSString *responseString = [NSString stringWithContentsOfURL:url];

  NSLog (@"%@", responseString);

  [pool release];

  return 0;
}
