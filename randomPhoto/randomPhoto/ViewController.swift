//
//  ViewController.swift
//  randomPhoto
//
//  Created by 郭家宇 on 2023/8/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imagePhotoView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomPhoto()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomButton(_ sender: Any) {
        getRandomPhoto()
        
    }
    func getRandomPhoto(){
            let urlString = "https://source.unsplash.com/random/600x600"
            let url = URL(string: urlString)!
            
            // 使用 do-catch 塊以處理可能的錯誤
            do {
                // 使用 URLSession 進行非同步的網絡請求
                let data = try Data(contentsOf: url)
                // 將獲取的圖片數據轉換為 UIImage 並設置給 imagePhotoView
                imagePhotoView.image = UIImage(data: data)
            } catch {
                // 如果獲取圖片的過程中出現錯誤，這裡可以進行錯誤處理
                print("Error fetching image: \(error)")
            }
        }
    
}

