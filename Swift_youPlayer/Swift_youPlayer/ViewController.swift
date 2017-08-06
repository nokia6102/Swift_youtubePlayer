
import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController,YTPlayerViewDelegate {
  @IBOutlet weak var playerView: YTPlayerView!

  @IBOutlet weak var lblTime: UILabel!
  override func viewDidLoad()
  {
    super.viewDidLoad()
    self.playerView.load(withVideoId: "yYIBb81ocvg", playerVars: ["playsinline": 1])
    self.playerView.delegate = self
  }

  //YTPLayerViewDelegate
  
  func playerView(_ playerView: YTPlayerView, didPlayTime playTime: Float) {
      print ("playTime :\(playTime)")
     lblTime.text = "\(playTime)"
  }
}

