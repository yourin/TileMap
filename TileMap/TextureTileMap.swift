//
//  TextureTileMap.swift
//  TileMap
//
//  Created by 義晴井上 on 2015/05/12.
//  Copyright (c) 2015年 youringtone. All rights reserved.
//

import SpriteKit

class TileMapMaker {
    
    var textureName     :String!
    var texture         :SKTexture!
    var numberOfColumns :UInt32!
    var numberOfRows    :UInt32!
    var tileMaps        = [SKTexture]()

init(textureFileName:String,numberOfColumns:UInt32,numberOfRows:UInt32){
//    let texture = SKTexture(image: textureFileName)
    
    self.textureName        = textureFileName
    self.numberOfColumns    = numberOfColumns
    self.numberOfRows       = numberOfRows
    self.texture            = SKTexture(imageNamed: textureFileName)
    
}


}