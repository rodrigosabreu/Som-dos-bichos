//
//  ViewController.swift
//  Som dos bichos
//
//  Created by Rodrigo Abreu on 29/11/2017.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    
    @IBAction func cao(_ sender: Any) {
        self.executarSom(nomeSom: "cao")
    }
    
    @IBAction func gato(_ sender: Any) {
        self.executarSom(nomeSom: "gato")
    }
    
    @IBAction func leao(_ sender: Any) {
        self.executarSom(nomeSom: "leao")
    }
    
    @IBAction func macaco(_ sender: Any) {
        self.executarSom(nomeSom: "macaco")
    }
    
    @IBAction func ovelha(_ sender: Any) {
        self.executarSom(nomeSom: "ovelha")
    }
    
    @IBAction func vaca(_ sender: Any) {
        self.executarSom(nomeSom: "vaca")
    }
    
    func executarSom(nomeSom: String){
        
        if let path = Bundle.main.path(forResource: nomeSom, ofType: "mp3"){
            let url = URL(fileURLWithPath: path)
            
            do{
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            }catch{
                print("Erro ao executar o adudio")
            }
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

