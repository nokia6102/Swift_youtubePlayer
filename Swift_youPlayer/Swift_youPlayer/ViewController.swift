
import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController,YTPlayerViewDelegate {
  @IBOutlet weak var playerView: YTPlayerView!
  let playerVars = ["playsinline": 1]
  
  @IBOutlet weak var lblTime: UILabel!
  override func viewDidLoad()
  {
    super.viewDidLoad()
   
    self.playerView.load(withVideoId: "S9xzKII9yRw", playerVars: playerVars)
    self.playerView.delegate = self
    
  }

  @IBAction func btnLoadList(_ sender: UIButton)
  {
        self.playerView.load(withPlaylistId: "PLNimSq2k6r46NtbwbHLjl9pjVidMPiTQ7", playerVars: playerVars)
  }
  
  @IBAction func btnPrev(_ sender: Any)
  {
    self.playerView.previousVideo()
  }
  
  @IBAction func btnNext(_ sender: UIButton)
  {
    self.playerView.nextVideo()
  }
  
  //YTPLayerViewDelegate
  func playerView(_ playerView: YTPlayerView, didPlayTime playTime: Float) {
      print ("playTime :\(playTime)")
     lblTime.text = "\(playTime)"
     if Int(playTime) == Int (playerView.duration())
     {
      playerView.stopVideo()
  
      
    }
  }
}

