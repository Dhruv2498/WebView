import UIKit
import WebKit
class ViewController: UIViewController,WKNavigationDelegate {
    var mywebview : WKWebView!
    
    override func loadView() {
        mywebview = WKWebView()
        mywebview.navigationDelegate = self
        view = mywebview
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.augustman.com/in/watches/ronaldo-watch-cr7-jacobandco-price/#:~:text=Answer%3A%20The%20most%20expensive%20watch,(approximately%20INR%2016.4%20crores).&text=written%20by.")!
        mywebview.load(URLRequest(url: url))
    }


}

