import UIKit

protocol ButtonDelegate {

    // 音を鳴らす
    func audio()

    // 背景を変える
    func background()
}

extension ButtonDelegate {
    func audio() {
        print("鳥の囀りを流します")
    }
}

/// 処理を任せる側
class Button {
    var delegate: ButtonDelegate? = nil

    func click() {
        print("ボタンが押されました")
        if let dg = self.delegate {
            dg.audio()
            dg.background()
        } else {
            print("何もしません")
        }
    }
}

/// 処理を任される側
class Button1: ButtonDelegate {

    func audio() {
        print("音１を鳴らします")
    }

    func background() {
        print("背景1を表示します\n")
    }
}

let button = Button()

let button1 = Button1()

button.delegate = button1 // Button1クラスのインスタンスに処理を任せる宣言する
button.click()

/* Button2
 * audio()はあらかじめ実装されているものを仕様
 */
class Button2: ButtonDelegate {
    func background() {
        print("背景2を表示します\n")
    }
}

let button2 = Button2()

button.delegate = button2
button.click()
