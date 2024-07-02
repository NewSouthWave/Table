//
//  DetailViewController.swift
//  Table
//
//  Created by Nam on 2024/07/02.
//

import UIKit

class DetailViewController: UIViewController {

    var receiveItem = ""    // main view에서 받을 텍스트를 위한 변수
    
    @IBOutlet var lblItem: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem  // 뷰가 노출될 때마다 내용을 레이블의 텍스트로 표시
    }
    
    func receiveItem(_ item: String){
        receiveItem = item
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
