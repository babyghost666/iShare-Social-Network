//
//  DataService.swift
//  iShare
//
//  Created by Peter Leung on 4/10/2016.
//  Copyright © 2016 winandmac Media. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = FIRDatabase.database().reference()
let STORAGE_BASE = FIRStorage.storage().reference()

class DataService {
    
    static let ds = DataService()
    private var _REF_BASE = DB_BASE
    private var _REF_POSTS = DB_BASE.child("posts")
    private var _REF_USERS = DB_BASE.child("users")
    
    private var _REF_POST_IMAGES = STORAGE_BASE.child("post-pics")
    
    
    var REF_BASE: FIRDatabaseReference{
        return _REF_BASE
    }
    
    var REF_POSTS: FIRDatabaseReference {
        return _REF_POSTS
    }
    
    var REF_USERS:FIRDatabaseReference {
        return _REF_USERS
    }
    
    var REF_POST_IMAGES:FIRStorageReference{
        return _REF_POST_IMAGES
    }
    
    func createFirebaseUser(uid: String, userData: Dictionary<String,String>){
        REF_USERS.child(uid).updateChildValues(userData)
        
    }
    
    
}
