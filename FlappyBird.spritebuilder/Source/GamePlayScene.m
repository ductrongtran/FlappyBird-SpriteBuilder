#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // load a new Character from CCB file
    // CCB files are created by SpriteBuilder and describe the properties
    // and appearance of in-game objects like our Flappy Bird
    character = (Character *)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // This will be run every frame
    // delta is the time that has elapsed since the last time it was run
    // This is usually 1/60 but can be bigger if the game slows down
    timeSinceObstacle += delta;
    
    // check to see if two seconds have passed
    if (timeSinceObstacle > 1.0f) {
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}

@end
