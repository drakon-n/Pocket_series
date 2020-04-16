//
//  HomeViewController.swift
//  Pocket_Series
//
//  Created by Влад on 15.04.2020.
//  Copyright © 2020 Artur Sardaryan. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modelArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let castedCell = cell as? TvSeriesViewCell {
            castedCell.fillCell(with: model)
        }
        return cell
    }
    
    @IBOutlet weak var tvSeriesList: UITableView!
    var modelArray = [TVSeriesCellModel]()
    let cellIdentifier = "tvSeriesViewCell"
    var identifier: [String] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return modelArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, widthForRowAt indexPath: IndexPath) -> CGFloat {
        return 375
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
       //performSegue(withIdentifier: "GoPlace", sender: nil)}
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let testList: listArr = listArr(series: [
            listArr.list(title: "viking", year: "2019", score: "7,5/10", genre: "fight", poster: "mighty viking"),
            listArr.list(title: "green arrow", year: "2015", score: "8/10", genre: "fight", poster: "mighty Olly")
        ])
      
        
        tvSeriesList.delegate = self
        tvSeriesList.dataSource = self
        tvSeriesList.register(UINib.init(nibName: "TvSeriesViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        self.fillModelSeries(testList)
        self.tvSeriesList.reloadData()
    }
    
    func fillModelSeries(_ mass: listArr) {
        modelArray = []
        for elm in mass.series {
            let model = TVSeriesCellModel()
            model.poster = "\(elm.poster)"
            model.title = "\(elm.title)"
            model.genre = "\(elm.genre)"
            model.year = "\(elm.year)"
            model.imdbScore = "\(elm.score)"
            identifier.append(elm.title)
            modelArray.append(model)
        }
        
    }
   
}
