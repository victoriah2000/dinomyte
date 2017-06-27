//
//  ViewController.swift
//  dinomyte
//
//  Created by Victoria Heric on 6/24/17.
//  Copyright © 2017 midsummer dream digital. All rights reserved.
//

import UIKit
import AVFoundation
import SceneKit

class ViewController: UIViewController {

    @IBOutlet var backgroundVIew: UIImageView!
    @IBOutlet var volcano: UIImageView!
    @IBOutlet var trees: UIImageView!
    @IBOutlet weak var sceneKitView: SCNView!
    
    
    
    
    var TRex = AVPlayer(name:  "TRex", extension: "mp3")!
    var TRex2 = AVPlayer(name: "TRex2", extension: "mp3")!
    var Raptor = AVPlayer(name:  "Raptor", extension: "mp3")!
    var pterodactyl = AVPlayer(name:  "pterodactyl", extension: "mp3")!
    var Dynomite = AVPlayer(name:  "Dynomite", extension: "mp3")!
    var alligator = AVPlayer(name:  "alligator", extension: "mp3")!
    var Velole = AVPlayer(name:  "Velole", extension: "mp3")!
    
    
    
    @IBAction func dino1(_ sender: UIButton) {
        TRex.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.sendSubview(toBack: backgroundVIew)
        view.sendSubview(toBack: volcano)
        view.sendSubview(toBack: trees)
        let myScene = SCNScene()
        let particleNode = SCNNode()
        let particleSystem = SCNParticleSystem(named: "lavaflow", inDirectory: "")
        particleNode.addParticleSystem(particleSystem!)
        myScene.rootNode.addChildNode(particleNode)
        sceneKitView.scene = myScene
    }
    @IBAction func dino2(_ sender: UIButton) {
        TRex2.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    @IBAction func dino3(_ sender: UIButton) {
        Raptor.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    @IBAction func dino4(_ sender: UIButton) {
        Velole.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    
    @IBAction func dino5(_ sender: UIButton) {
        alligator.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    
    @IBAction func dino6(_ sender: UIButton) {
        pterodactyl.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    
    @IBAction func dino7(_ sender: UIButton) {
        Raptor.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    @IBAction func dino8(_ sender: UIButton) {
        TRex2.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    
    @IBAction func dino9(_ sender: UIButton) {
        pterodactyl.playFromStart()
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.toValue = 2 * CGFloat.pi
        animation.isCumulative = true
        animation.duration = 0.5
        sender.layer.add(animation, forKey: "spin")
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dinomyteButton(_ sender: UIButton) {
         Dynomite.playFromStart()
    }
    
}

