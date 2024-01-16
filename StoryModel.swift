//
//  StoryModel.swift
//  Choose Your Story
//
//  Created by Menura Wijesekara on 2024-01-16.
//

struct Story{
    let pages : [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage {
            return pages[pageIndex]
        }
}

struct StoryPage{
    let text : String
    
    let choices : [Choice]
    
    init(text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

struct Choice{
    let text : String
    let destination : Int
}
