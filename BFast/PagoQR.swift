import UIKit
import Foundation
class PagoQR: UIViewController{
    var producto:String = "Producto1"
    var ot:String = "003"
    var alias:String = ""
    let cuenta:String = ""
    var TipCuenta:String = ""
    var referencia:String = ""
    var beneficiario:String = ""
    var monto:String = ""
    var bank:String = ""
    var country:String = ""
    var currency:String = ""
    var unico:String = ""
    @IBAction func GetMount(_ sender: Any) {
        var pissa:String = Mount.text!
        var before:String = "https://chart.apis.google.com/chart?cht=qr&chs=350x350&chl=Producto%201%2050%7b%22ot%22:%20%220001%22,%22dOp%22:%20%5b%7b%22alias%22:%20%22%22%7d,%7b%22cl%22:%20%22012180015542376687%22%7d,%7b%22type%22:%20%22CL%22%7d,%7b%22refn%22:%20%22%22%7d,%7b%22refa%22:%20%22IVAN%22%7d,%7b%22amount%22:%20%22"
        var after:String = "%22%7d,%7b%22bank%22:%20%2200012%22%7d,%7b%22country%22:%20%22MX%22%7d,%7b%22currency%22:%20%22MXN%22%7d%5d%7d"
        var link:String = before + pissa + after
        let url = URL(string: link)
        let urlRequest = URLRequest(url: url!)
        ShowQR.loadRequest(urlRequest)
        ShowQR.layer.cornerRadius = 40
    }
    @IBOutlet weak var ShowQR: UIWebView!
    @IBOutlet weak var Mount: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
