//
//  ItemModel.swift
//  Daily_Journal_App
//
//  Created by salome on 21.12.23.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    let title:String
    let news: String
    let date: Date
    
    init(id: String = UUID().uuidString, title: String, news:String, date: Date) {
        self.id = id
        self.title = title
        self.news = news
        self.date = date
    }
    
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, news: news, date: date)
    }
    
    
}
