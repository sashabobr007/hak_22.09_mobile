//
//  Api.swift
//  hak_22.09
//
//  Created by Александр Алексеев on 22.09.2023.
//

import Foundation
import Alamofire


struct ApiResult : Decodable{
    let message : String
}


struct Api {
    static let shared = Api()
    let url = "https://alexbobr.ru/"
        
    func send(imageData : Data, res : @escaping  (Bool) -> Void){
            AF.upload(multipartFormData: { multipartFormData in
                multipartFormData.append(imageData, withName: "image", fileName: "login", mimeType: "image/jpeg")
            
            }, to: url + "image/").responseJSON { response in
                debugPrint(response.response?.statusCode)
                
                res(true)
            }

        }
}
