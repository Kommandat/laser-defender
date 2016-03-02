//
//  GameScene.swift
//  laser-defender
//
//  Created by Lakshay on 2/19/16.
//  Copyright (c) 2016 Lakshay Akula. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    func random(min min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
    
    // Creates and adds enemy to the scene
    func addEnemy( ) {
        // Create enemy
        let enemy = SKSpriteNode(imageNamed: "enemy")
        
        // Determine where to spawn the monster along the X and Y axis
        // Use full Y axis and only half the x
        let actualX = random(min: enemy.size.width/2, max: size.width - enemy.size.height/2)
        let actualY = random(min: enemy.size.height/2, max: size.height - enemy.size.height/2)
        
        
        
    }
}
