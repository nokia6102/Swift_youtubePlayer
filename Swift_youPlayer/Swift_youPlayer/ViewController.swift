//
//  ViewController.swift
//  Swift_youPlayer
//
//  Created by Leon Cheng on 2017/8/6.
//  Copyright © 2017年 Leon Cheng. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController {
  @IBOutlet weak var playerView: YTPlayerView!

  override func viewDidLoad()
  {
    super.viewDidLoad()
    self.playerView.load(withVideoId: "yYIBb81ocvg", playerVars: ["playsinline": 1])
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

