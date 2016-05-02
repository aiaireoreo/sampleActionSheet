//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by AI Matsubara on 2016/04/29.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender: UIButton) {
        
        //アクションシート作成
        var alertController = UIAlertController(
        title: "行くアクティビティ",
        message: "どれにする？",
        preferredStyle: .ActionSheet)
        
        
        //通常ボタンを追加（選択肢のこと）
        alertController.addAction(UIAlertAction(
            title: "ヨガ",
            style: .Default,
            handler: {action in self.myAction("ヨガ")} ))
            //action in printのOKはデバックエリア
        
        alertController.addAction(UIAlertAction(
            title: "バスケ",
            style: .Default,
            handler: {action in self.myAction("バスケ")} ))
        
        
        
        //キャンセルボタン追加
        alertController.addAction(UIAlertAction(
            title: "今日はやめとく",
            style: .Cancel,
            handler: {action in self.myLabel.text = "明日は行こう！"}))
        
        
        //削除ボタン追加
        alertController.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .Destructive,
            handler: {action in self .myLabel.text = "ムエタイ頑張ろう！"}))
        //style: .Destructive,　→UIAlertActionは省略可能
        
        
        //アクションシート表示
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    //通常ボタンを選択したときに呼ばれるメソッド
    func myAction(var activity:String!){
        //activity -> 指定されたアクティビティ名
        myLabel.text = "\(activity)に行こう！"
        //引数の設定(var activity:String!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

