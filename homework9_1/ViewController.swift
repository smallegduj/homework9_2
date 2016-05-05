import UIKit

class ViewController: UIViewController,UITextFieldDelegate {



    @IBOutlet var accountTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField === self.accountTextField {
            self.passwordTextField.becomeFirstResponder()
        }
        else {
            self.resignFirstResponder() //resign是收鍵盤
        }
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*
 step1. 要在viewcontroller加上UITextFieldDelegate的protocol
 step2. 將兩個UITextField的元件拉到viewcontroller，將它們與viewcontroller有關聯(delegte)
 step3. 收鍵盤的func是func textFieldShouldReturn(textField: UITextFiled) -> Bool {}
 step4. 在裡面用if條件判斷textField是否是等於accountTextField這個格子裡，如果是的話，就執行讓passwordTextField這格子變成是與使用者第一互動的元件(becomeFirstResponder)
 */