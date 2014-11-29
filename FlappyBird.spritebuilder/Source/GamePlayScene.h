//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    // these variables are in the class scope
    // they can be accessed anywhere in the GamePlayScene class
    Character* character;
    CCPhysicsNode *physicsNode; // a node that simulates physics
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
