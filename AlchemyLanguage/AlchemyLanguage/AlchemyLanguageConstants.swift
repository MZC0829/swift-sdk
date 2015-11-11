/**
 * Copyright 2015 IBM Corp. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import WatsonCore

public final class AlchemyLanguageConstants {
    
    // static methods
    static private func Calls() -> String { return "/calls" }

    // use this, it already uses Calls()
    static private func Prefix(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        switch requestType {
            
        case .URL: return Calls() + "/url/URL"
        case .HTML: return Calls() + "/html/HTML"
        case .Text: return Calls() + "/text/Text"
            
        }
        
    }
    
    // instance methods - should not be called
    private init(){}
    
}

// MARK: Entity Extraction
public extension AlchemyLanguageConstants {

    public static func GetEntities(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        return Prefix(fromRequestType: requestType) + "GetRankedNameEntities"
        
    }

}


// MARK: Sentiment Analysis
public extension AlchemyLanguageConstants {
    
    public static func GetTextSentiment(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        return Prefix(fromRequestType: requestType) + "GetTextSentiment"
        
    }
    
    public static func GetTargetedSentiment(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        return Prefix(fromRequestType: requestType) + "GetTargetedSentiment"
        
    }
    
}


// MARK: Keyword Extraction
public extension AlchemyLanguageConstants {
    
    public static func GetRankedKeywords(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        return Prefix(fromRequestType: requestType) + "GetRankedKeywords"
        
    }
    
}


// MARK: Concept Tagging
public extension AlchemyLanguageConstants {
    
    public static func GetRankedConcepts(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        return Prefix(fromRequestType: requestType) + "GetRankedConcepts"
        
    }
    
}


// MARK: Relation Extraction
public extension AlchemyLanguageConstants {
    
    public static func GetRelations(fromRequestType requestType: AlchemyLanguage.RequestType) -> String {
        
        return Prefix(fromRequestType: requestType) + "GetRelations"
        
    }
    
}


