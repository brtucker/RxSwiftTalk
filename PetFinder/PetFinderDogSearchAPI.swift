//
//  NetworkController.swift
//  PetFinder
//
//  Created by Blake Tucker on 4/8/16.
//  Copyright © 2016 Blake Tucker. All rights reserved.
//

import Foundation
import RxSwift

//
//API Key
//
//caab6b340a5738a8ca105121bb77f4f1
//API Secret
//
//e57378a9a547c8435b716f8aec8108d1

struct DogResult: CustomDebugStringConvertible {
    var name: String
    var animal: String
    var breeds: [String]
    var mix: Bool
    var age: String
    var sex: String
    var size: String
    var description: String
    var lastUpdate: String
    var status: String
    var photoUrls: [String]
    
    init(name: String, animal: String, breeds: [String], mix: Bool, age: String, sex: String,
         size: String, description: String, lastUpdate: String, status: String, photoUrls: [String]) {
        self.name = name
        self.animal = animal
        self.breeds = breeds
        self.mix = mix
        self.age = age
        self.sex = sex
        self.size = size
        self.description = description
        self.lastUpdate = lastUpdate
        self.status = status
        self.photoUrls = photoUrls
    }
}

extension DogResult {
    var debugDescription: String {
        return ""
    }
}

struct DogState {
    
    
}

enum ServiceState {
    case Online
    case Offline
    case LimitExceeded
}

extension String {
    var URLEscaped: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(.URLHostAllowedCharacterSet()) ?? ""
    }
}

class PetFinderDogSearchAPI {
    static let sharedAPI = PetFinderDogSearchAPI(wireframe: DefaultWireframe())
    
    private let wireframe: Wireframe
    
    private init(wireframe: Wireframe) {
        self.wireframe = wireframe
    }
}

extension PetFinderDogSearchAPI {
    func search(loadNextPageTrigger: Observable<Void>) -> Observable<DogState> {
        
        
    }
}