//
//  Answer.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 27.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    case pisiCat = "👺"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на дальних дистанциях."
        case .pisiCat:
            return "Вам всегда улыбается удача. Вы сочитаете все лучшие качества котэ и собак и не содержите плохих их качеств"
        }
    }
}
