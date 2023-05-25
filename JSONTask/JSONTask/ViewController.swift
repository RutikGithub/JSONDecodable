//
//  ViewController.swift
//  JSONTask
//
//  Created by Mac on 23/05/23.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var tableView: UITableView!
    
   
   // var apiResponse:ApiResponse?
    var batters:[BattersData]=[]
    var topping: [Topping]?
    override func viewDidLoad() {
        super.viewDidLoad()
        JsonDecode()
        registerXIB()
     
    }
    func registerXIB()
    {
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
func JsonDecode()
    {
        let json = """
    {"id":"0001","batters":{"batter":[{"id":"1001","type":"Regular"},{"id":"1002","type":"Chocolate"},{"id":"1003","type":"Blueberry"},{"id":"1004","type":"Devil's Food"}]},"topping":[{"id":"5001","type":"None"},{"id":"5002","type":"Glazed"},{"id":"5005","type":"Sugar"},{"id":"5007","type":"Powdered Sugar"},{"id":"5006","type":"Chocolate with Sprinkles"},{"id":"5003","type":"Chocolate"},{"id":"5004","type":"Maple"}],"type":"donut","name":"Cake","ppu":0.55000000000000004}
    """
        let jsonData = json.data(using: .utf8)!
      
        do
        {
            let decode = try JSONDecoder().decode(ApiResponse.self, from: jsonData)
            self.batters = decode.batters!.batter
             topping = decode.topping.map{$0}
           
            print(batters)
        }
        catch
        {
            print("invalide Data")
        }
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
}

extension ViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return batters.count
        }
        else
        {
            return topping!.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellData = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cellData.toppingIdLabel.text = "ID:\(topping![indexPath.row].id)"
        cellData.toppingLabel.text = "Type:\(topping![indexPath.row].type)"
        cellData.battersIdLabel.text = "ID:\(batters[indexPath.row].id)"
        cellData.battersLabel.text = "Type:\(batters[indexPath.row].type)"
        return cellData
    }
    
    
}
extension ViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
