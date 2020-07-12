Тестовый проект GnuStep
===========================

На ObjC можно невозмутимо писать на GNU/Linux.

```objectivec
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

```

`make && obj/test` - собрать и запустить программу

`sudo docker build --tag objc . && sudo docker run objc` - с помощью docker