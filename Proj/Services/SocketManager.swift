//
//  SSocketManagerClass.swift
//  Proj
//
//  Created by Developer on 04.04.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import Starscream

  protocol SocketManagerDelegate {
    func didReciveMessages(messages:Message)
}

    protocol SocketManagerСonversationDelegate {
        func conversationStopped()
}



class SocketManager: UIViewController, WebSocketDelegate {
   
    static let sharedInstanse = SocketManager()
    
    var socket: WebSocket!
    var delegate: SocketManagerDelegate?
    var delegateConversation: SocketManagerСonversationDelegate?
    
    var receiver : String? = nil
    var answer : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
}
    
    func socketsConnecting(){
        var request = URLRequest(url: URL(string: "ws://35.226.224.13:9090")!)
        request.timeoutInterval = 5
        socket = WebSocket(request: request)
        socket.delegate = self
        socket.connect()
    }
    
    //MARK: -- WEBSOCKETS
    
    func websocketDidConnect(socket: WebSocketClient) {
        print("websocketDidConnect")
        
        socket.write(string: "{\"action\":\"intro\",\"data\":{\"token\":\"" + APIService.sharedInstance.token! + "\"}}")

    }
    
    func websocketDidDisconnect(socket: WebSocketClient, error: Error?) {
        print("websocketDidDisconnect")
    }
    
    func websocketDidReceiveMessage(socket: WebSocketClient, text: String) {

        guard let data = text.data(using: .utf16) else {return}
        do{
            let decoder = JSONDecoder()
			let dataRespose = try? decoder.decode(CommonResponseModel.self, from: data)
            
			switch dataRespose?.type {
			case .incomingMessage?:
                let parsMessage = try? decoder.decode(MessageData.self, from: data)
                self.recievedMessage(message: parsMessage)
			case .conversationRequest?:
                break
            case .userOffline?:
				break
			case .messagePushed?:
				break
            case .quitConversation?:
                let parsQuitConversation = try? decoder.decode(CommonResponseModel.self, from: data)
                self.delegateConversation?.conversationStopped()
            case .userOnline?:
				break
            case .conversationRequestResponse?:
                let parsDialogResponce = try? decoder.decode(DialogData.self, from: data)
                self.answer = parsDialogResponce?.message.answer
                
                guard let myAnswer = answer else {return}
                
                let answerDict = ["answer": myAnswer]
                
                NotificationCenter.default.post(name: Notification.Name("AnswerStartDialog"), object: nil, userInfo: answerDict)

			default:
				break
			}
			
        } catch let err {
            print(err.localizedDescription)
        }

    }
        

    func websocketDidReceiveData(socket: WebSocketClient, data: Data) {
        print("websocketDidReceiveData")
    }

    // MARK: Messages
    
    func sendMessage(message:Message) {
        
        guard let token = APIService.sharedInstance.token else { return }
        
        let jsonPushMassage = "{\"action\":\"push_message\",\"data\":{\"token\":\"" + String(describing: token) + "\",\"receiver\":\"" + String(describing: message.receiverId) + "\",\"message\":\"" +  "\( message.text)" + "\",\"language\":\"ru-RU\"}}"
        self.socket.write(string: jsonPushMassage)
        delegate?.didReciveMessages(messages: message)

    }
    
    
    
//    //перенести в этот метод с чат твк
//    func startDialog() {
//        
//        guard let token = APIService.sharedInstance.token else { return }
//    
//    let jsonStartDialog = "{\"action\":\"conversation_request\",\"data\":{\"token\":\"" + String(describing: token) + "\",\"receiver\":\"" + String(describing:receiver ) + "\"}}"
//
//        self.socket.write(string: jsonStartDialog)
//
//
//    }
	
	//	MARK: private
	
    var textMessage : String? = nil
    
	private func recievedMessage(message: MessageData?) {
		if let dataMessage = message?.message {
			let message = Message(message: dataMessage )
			
			APIService.sharedInstance.translate(q: message.text, completion: { [weak self] (translationData, err)  in
				guard let `self` = self else { return }
				message.text = (translationData?.translatedText)!
				self.delegate?.didReciveMessages(messages: message)
               
                
                let strDict = ["str": message.text]
               self.textMessage = message.text
                
                NotificationCenter.default.post(name: Notification.Name("ReadTextNotification"), object: nil, userInfo: strDict)
			})
		}

	}
	
    
}
