//
//  AddViewController.swift
//  Table
//
//  Created by Nam on 2024/07/02.
//

import UIKit
//
class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    let MAX_ARRAY_NUM = 3
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT: CGFloat = 80
    var imageArr = [UIImage?]()
    var selectedIcon: String = ""
    var itemsImageFile2 = ["cart.png","clock.png","pencil.png"]


    @IBOutlet var tfAddItem: UITextField!
    @IBOutlet var iconPickerView: UIPickerView!
    @IBOutlet var iconImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        for i in 0 ..< MAX_ARRAY_NUM{
            let image = UIImage(named: itemsImageFile2[i])
            imageArr.append(image!)
  
        }
        iconImgView.image = imageArr[0]
        selectedIcon = itemsImageFile2[0]   // 화면이 실행되자마자 첫번째 인덱스의 아이콘을 할당해주어야함
    }
    
    // 피커 뷰 열 개수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    // 피커 뷰 높이
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    // 피커 뷰 선택
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemsImageFile2.count
    }
    //피커 뷰에 이미지 표시
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let iconPickerView = UIImageView(image: imageArr[row])
        iconPickerView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return iconPickerView
    }
    // 선택된 이미지 이미지 뷰에 표시
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        iconImgView.image = imageArr[row]
        selectedIcon = itemsImageFile2[row] // 선택한 이미지를 변수에 저장한다
    }
    // 새 목록 추가하는 함수
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)   // 텍스트 필드에 텍스트 추가
        itemsImageFile.append(selectedIcon)  // 이미지 파일 추가
        tfAddItem.text = "" // 텍스트 필드 내용 지움
        _ = navigationController?.popViewController(animated: true)  // 테이블 뷰로 돌아감
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
