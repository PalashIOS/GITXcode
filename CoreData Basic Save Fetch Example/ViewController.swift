//
//  ViewController.swift
//  CoreData Basic Save Fetch Example
//
//  Created by CoderPath on 16/07/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var myText: UITextField!
    var data = [ChildrenData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addBNewChildren(_ sender: Any) {
        let app = (UIApplication.shared.delegate) as! AppDelegate
        let context = app.persistentContainer.viewContext
        let childData = NSEntityDescription.insertNewObject(forEntityName: "ChildrenData", into: context) as! ChildrenData
        childData.childname = myText.text
        
        
        do {
            try context.save()
            print("data saved")
            myText.text = ""
        } catch {
            print("error")
        }
    }
    
    
    
    @IBAction func fetchData(_ sender: UIButton) {
        
        let appDe = (UIApplication.shared.delegate) as! AppDelegate
        let contextNew = appDe.persistentContainer.viewContext
        
        do {
            let cData = try contextNew.fetch(ChildrenData.fetchRequest()) as! [ChildrenData]
            print("Data has Fetched Successfully")
            for childObject in cData {
                print(childObject.childname!)
            }
        }
        catch
        {
            printContent("Error Fetch")
        }
    }
}

