//
//  TvSeriesViewCell.swift
//  Pocket_Series
//
//  Created by Влад on 15.04.2020.
//  Copyright © 2020 Artur Sardaryan. All rights reserved.
//

import UIKit

class TvSeriesViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var imdbScoreLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    required init?(coder aDecoder: NSCoder)
      {
          super.init(coder: aDecoder)
          self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          
      }
      override func awakeFromNib() {
          super.awakeFromNib()
      }
      
      override func setSelected(_ selected: Bool, animated: Bool) {
          super.setSelected(selected, animated: animated)
      }
      
      func fillCell(with model: TVSeriesCellModel) {
        print(model)
        titleLabel.text = model.title
        genreLabel.text = model.genre
        scoreLabel.text = model.imdbScore
        yearLabel.text = model.year
        model.poster = "https://raw.githubusercontent.com/drakon-n/Ios_Dev_Tech_Park/master/Moscow_Places/Images/error.jpg"
        posterImage.image = UIImage(named: "viking") // не забыть убрать этот костыль!!!
        //let url = URL(string: model.image ?? "https://raw.githubusercontent.com/drakon-n/Ios_Dev_Tech_Park/master/Moscow_Places/Images/error.jpg")
        //PlaceImage.kf.setImage(with: url)
         
      }

}
