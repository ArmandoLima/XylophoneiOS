import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Linkando somente um Outlet a todos os botões para evitar códigos repetidos desnecessários visto que todos os botões reealizam a mesma função, tocar o som...
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
       //Passando o título do botão para chamar o áudio referente a ele ao invés de criar 7 funções separadas.
        playSound(buttonLabel: sender.currentTitle!)
        
        //Alterando a opacidade do botão para poder fazer o efeito de que o botão foi selecionado.
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        
            sender.alpha = 1
        }
        
        
        
        
        
    }
    
    func playSound(buttonLabel: String) {
        let url = Bundle.main.url(forResource: buttonLabel, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
