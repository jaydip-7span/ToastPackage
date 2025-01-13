//
//  ToastManager.swift
//  ToastMessage
//
//  Created by jaydip jadav on 13/01/25.
//

import SwiftUI
import Combine
@available(iOS 13.0, *)

@MainActor
public class ToastManager: ObservableObject {
     public static let shared = ToastManager()
    @Published var message: String = ""
    @Published var isShowing: Bool = false
    @Published var alignment: Alignment?
    @Published var backgroundColor: Color = .white
    @Published var tinColor: Color?
    private init(){}
    
    public func message(message: String, alignment: Alignment? = .bottom, backgroundcolor: Color = .white, tinColor: Color = .black) {
        self.message = message
        self.alignment = alignment
        self.backgroundColor = backgroundcolor
        self.tinColor = tinColor
        self.isShowing = true
        
        Task { @MainActor in
            try await Task.sleep(nanoseconds: 2_000_000_000)
            self.isShowing = false
             
        }
    }
}
