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
        
        navigationItem.setHidesBackButton(true, animated: false)
        youAreLabel.text = "Вы - \(calculateResult().rawValue)"
        definitionLabel.text = calculateResult().definition
    }
    
    func calculateResult() -> AnimalType {
        var maximum = [0, 0, 0, 0]
        var whoAreYou: Int?
        var pisiCat = false
        var similarity = 0
        var index = 0
        
        for answer in results {
            if answer.type == .dog {
                maximum[0] += 1
            }
            if answer.type == .cat {
                maximum[1] += 1
            }
            if answer.type == .rabbit {
                maximum[2] += 1
            }
            if answer.type == .turtle {
                maximum[3] += 1
            }
        }
        
        whoAreYou = maximum.max()
        
        for (i, item) in maximum.enumerated() {
            if item == whoAreYou {
                similarity += 1
                index = i
            }
            if similarity > 1 {
                pisiCat = true
            }
        }
        
        if pisiCat {
            return .pisiCat
        } else {
            switch maximum[index] {
            case 0:
                return .dog
            case 1:
                return .cat
            case 2:
                return .rabbit
            case 3:
                return .turtle
            default:
                return .dog
            }
        }
    }
}
