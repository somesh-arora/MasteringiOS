//
//  ChartsViewController.swift
//  MasteringiOS
//
//  Created by Somesh Arora on 4/23/18.
//  Copyright © 2018 Somesh Arora. All rights reserved.
//

import UIKit
import Charts



class ChartsViewController: UIViewController
{

    @IBOutlet weak var PieChart: PieChartView!
    
    var rightAnswer = PieChartDataEntry(value: 0)
    var wrongAnswer = PieChartDataEntry(value: 0)
    
    var totalEntries = [PieChartDataEntry]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        PieChart.chartDescription?.textColor = UIColor(white: 1, alpha: 1)
        rightAnswer.value = 2
        rightAnswer.label = "Correct"
        
        wrongAnswer.value = 3
        wrongAnswer.label = "Wrong"
        
        PieChart.holeColor = UIColor(white: 1, alpha: 0.0)
        PieChart.entryLabelColor = UIColor(white: 1, alpha: 1)
        PieChart.noDataTextColor = UIColor(white: 1, alpha: 1)
        PieChart.legend.textColor = UIColor(white: 1, alpha: 1)
        
        totalEntries = [rightAnswer, wrongAnswer]
        updateChart()

    }
    
    func updateChart()
    {
        let charDataSet = PieChartDataSet(values: totalEntries, label: nil)
        let chartData = PieChartData(dataSet: charDataSet)
        
        let colors = [UIColor(named: "Gotcha"), UIColor(named: "Meh")]
        charDataSet.colors = colors as! [NSUIColor]
        PieChart.data = chartData
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    

    

}
