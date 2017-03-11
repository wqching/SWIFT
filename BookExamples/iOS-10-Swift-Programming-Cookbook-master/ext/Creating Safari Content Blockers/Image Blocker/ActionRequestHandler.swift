//
//  ActionRequestHandler.swift
//  Image Blocker
//
//  Created by Vandad on 6/30/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import UIKit
import MobileCoreServices

class ActionRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequest(with context: NSExtensionContext) {
      let attachment = NSItemProvider(contentsOf:
        Bundle.main.url(forResource: "blockerList", withExtension: "json"))!
    
        let item = NSExtensionItem()
        item.attachments = [attachment]
    
        context.completeRequest(returningItems: [item], completionHandler: nil);
    }
    
}
