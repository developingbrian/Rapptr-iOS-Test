//
//  ChatClient.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request to fetch chat data used in this app.
 *
 * 2) Using the following endpoint, make a request to fetch data
 *    URL: http://dev.rapptrlabs.com/Tests/scripts/chat_log.php
 *
 */

class ChatClient {
    
    var session = URLSession.shared
    let chatURL = "http://dev.rapptrlabs.com/Tests/scripts/chat_log.php"
    
    func fetchChatData(completion: @escaping ([Message]) -> Void, error errorHandler: @escaping (String?) -> Void) {
        
        let fetchURL = URL(string: chatURL)!
        
        session.dataTask(with: fetchURL) { (data, response, error) in
            
            do {
                
                guard let unwrappedData = data else { return }
                
                
                if let decodedData = try JSONDecoder().decode(MessageData?.self, from: unwrappedData) {
                    
                    let message = decodedData.data
                    DispatchQueue.main.async {
                        
                        completion(message)
                    }
                }
                
            }
            
            catch {
                
                DispatchQueue.main.async {
                    errorHandler(error.localizedDescription)
                }
            }
        }.resume()
        
        
        
        
    }
}
