//
//  ViewController.swift
//  DartNativeDemo
//
//  Created by zhengzeqin on 2022/10/11.
//

import UIKit

class ViewController: UIViewController, DataModelObserver {
    
    @IBOutlet weak var countView: UILabel!

    @IBOutlet weak var textField: UITextField!
    deinit {
      DataModel.shared.removeObserver(observer: self)
    }

    func onCountUpdate(newCount: Int64) {
      self.countView.text = String(format: "%d", newCount)
    }


    override func viewDidLoad() {
      super.viewDidLoad()
      DataModel.shared.addObserver(observer: self)
      onCountUpdate(newCount: DataModel.shared.count)
    }

    @IBAction func onAddCount() {
      DataModel.shared.count = DataModel.shared.count + 1
    }

    @IBAction func onNext() {
      let navController = self.navigationController!
      let vc = SingleFlutterViewController(withEntrypoint: nil)
      navController.pushViewController(vc, animated: true)
    }

    @IBAction func sendMessage(_ sender: UIButton) {
        CommonService.shared.sendMessage(value: "\(textField.text ?? "my name zhengzeqin")")
    }
    
    @IBAction func reduce(_ sender: UIButton) {
        DataModel.shared.count = DataModel.shared.count - 1
    }
    
    @IBAction func touchBg(_ sender: Any) {
        textField.resignFirstResponder()
    }
}

