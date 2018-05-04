//
//  SLAddressBookHelp.h
//  AdressBook
//
//  Created by 武传亮 on 2018/5/4.
//  Copyright © 2018年 武传亮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^SLAddressBookHelpModels)(NSArray *addressBookModels);
typedef void (^SLAddressNameBlock)(NSString *name, NSString *phone);

@interface SLAddressBookHelp : NSObject

+ (instancetype)sharedInstance;


- (void)sl_getAddressNameWithController:(UIViewController *)vc addressName:(SLAddressNameBlock)addressName show:(BOOL)show;

- (void)sl_getUserContacts:(UIViewController *)vc addressBookModels:(SLAddressBookHelpModels)addressBookModels;


@end


@interface SLAddressBookModel : NSObject

/**  */
@property (strong, nonatomic) NSString *name;
/**  */
@property (strong, nonatomic) NSArray *phones;

@end
