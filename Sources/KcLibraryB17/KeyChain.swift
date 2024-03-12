//
//  KeyChain.swift
//
//
//  Created by Jose Luis Bustos Esteban on 12/3/24.
//

import Foundation
import KeychainSwift

public struct KeyChainKC {
    
    public init(){}  //evitar el error de no encontrar inicializador.
    
    //funcion guardar
    @discardableResult
    public func saveKC(key: String, value: String) -> Bool {
        if let data = value.data(using: .utf8){
            return KeychainSwift().set(data, forKey: key)
        } else {
            return false
        }
    }
    
    //funcion de cargar una clave
    public func loadKC(key:String) -> String? {
        if let data = KeychainSwift().get(key){
            return data
        } else {
            return ""
        }
    }
    
    //delete
    @discardableResult
    public func deleteKC(key: String) -> Bool {
        KeychainSwift().delete(key)
    }
    
}
