//
//  UIPlayerView.swift
//  EL Nutritious
//
//  Created by Pari Gulati on 7/1/23.
//

import Foundation
import SwiftUI
import AVKit

class UIVideoPlayer: UIView {
    var playerLayer = AVPlayerLayer()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
       guard let url = URL(string: "https://github.com/PariG24/ELVideo/raw/main/nutritiousport.mov") else {return}
        
        let player = AVPlayer(url: url)
        player.play()
        
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        
        layer.addSublayer(playerLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
