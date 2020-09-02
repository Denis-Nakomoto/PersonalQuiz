//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 31.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var youAreLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var results: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        youAreLabel.text = "Вы - \(calculateResult(for: results).rawValue)"
        definitionLabel.text = calculateResult(for: results).definition
    }
    
    func calculateResult(for answer: [Answer]) -> AnimalType {
        var maximum = [AnimalType : Int?]()
        var maximumDictValue = 0
        var index: AnimalType!
        var counter = 0
        
        for item in answer {
            maximum[item.type, default:0]! += 1
        }
        
        for (key, value) in maximum {
            if let val = value {
                if val > maximumDictValue {
                    maximumDictValue = val
                    index = key
                }
            }
        }
        
        for (_, value) in maximum {
            if maximumDictValue == value {
                counter += 1
            }
            if counter > 1 {
                index = .pisiCat
            }
        }
        print(maximum)
        return index
    }
}
