//
//  colorvs.swift
//  Color testing app
//
//  Created by Developer on 03/09/2023.
//

import UIKit

class colorvs: UIViewController {
    
    var colors: [UIColor] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
       addrandomcolors()
    
      
    }
    
   
    func addrandomcolors()
    {
        for _ in 0..<50
        {
            colors.append(createrandomcolor())
        }
    }
    
    
    func createrandomcolor () -> UIColor
    {
        let randomcolor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return randomcolor
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! colordetailrvc
        destVC.color = sender as? UIColor
    }
}

extension colorvs : UITableViewDelegate, UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        else
        {return UITableViewCell()}
        
      cell.backgroundColor = colors[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "tocolordetails", sender: color)
    }
    
   
    
    
}
