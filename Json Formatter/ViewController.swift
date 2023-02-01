//
//  ViewController.swift
//  Json Formatter
//
//  Created by Muruganandham on 31/01/23.
//

import Cocoa

class ViewController: NSViewController, NSTextViewDelegate {
    
    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func formatJsonPressed(_ sender: Any) {
        let newStr = SwiftJSONFormatter.beautify("""
                                                 \(textView.string)
                                                 """, indent: "   ")
        textView.string = newStr
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        textView.string = ""
    }
}

