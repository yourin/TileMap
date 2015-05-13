//
//  GameScene.swift
//  TileMap
//
//  Created by 義晴井上 on 2015/05/12.
//  Copyright (c) 2015年 youringtone. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var charaMap:TileMapMaker!
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        myLabel.zPosition = 1.0
        self.addChild(myLabel)
        
        
        
        let center = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        //マップ用テクスチャー
        let texture = SKTexture(imageNamed: "chara")
        //分割数
        let columns = 4
        let rows    = 4
        
        //切り出す位置
        let tilePositionRect = CGRect(x:0, y: 0.75, width:0.25, height:0.25 )
//切り出す
        let tex = SKTexture(rect: tilePositionRect, inTexture: texture)
        
        let sprite = SKSpriteNode(texture: tex)
        sprite.position = center
        sprite.zPosition = 2.0
        sprite.setScale(3.0)
        self.addChild(sprite)
        
        
        charaMap = TileMapMaker(textureFileName: "chara", numberOfColumns: 4, numberOfRows: 4)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            let location = touch.locationInNode(self)
            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
