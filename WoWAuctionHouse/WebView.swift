//
//  WebView.swift
//  WoWAuctionHouse
//
//  Created by Kun Lok on 8/31/21.
//


import SwiftUI
import WebKit


struct Webview: UIViewRepresentable {
    
    /*
     //fxn to populate creature item image by retrieivng html link to image -> Image("image.link")
     func getImage (webView: WKWebView, completion: @escaping (_ result: String?) -> Void) {
     
     //        let userContentController = WKUserContentController()
     let source = "document.getElementById('content').getElementsByClassName('image')[0].getAttribute('href')"
     webView.evaluateJavaScript(source, completionHandler: { (result, error ) in
     completion(result as? String)
     
     })
     }
     */
    
    let request: URLRequest
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        
        let wkWebView = WKWebView()
        
        wkWebView.isUserInteractionEnabled = true
        
        
        
        return wkWebView
    }
    
    
    
}

