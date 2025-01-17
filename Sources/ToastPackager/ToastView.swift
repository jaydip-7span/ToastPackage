//
//  ToastView.swift
//  ToastMessage
//
//  Created by jaydip jadav on 07/01/25.
//

import SwiftUI

@available(iOS 16.0, *)

struct ToastView: View {
    @StateObject private var toastManager = ToastManager.shared
    var body: some View {
        ZStack {
            if toastManager.isShowing == true {
                HStack {
                        Text(toastManager.message)
                            .font(.callout)
                            .foregroundColor(toastManager.tinColor ?? .black)
                            .lineLimit(2)
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom:8, trailing: 16))
                .background(
                    toastManager.backgroundColor
                        .shadow(.drop(color: Color.black.opacity(0.05), radius: 5, x: 2, y: 2))
                        .shadow(.drop(color: Color.black.opacity(0.04), radius: 5, x: -2, y: -2))
                            ,in: Capsule())
            }
        }
        .frame(width: (UIDevice().userInterfaceIdiom != .pad ?  UIScreen.main.bounds.width : 700) - 32)
        .frame(maxHeight: .infinity, alignment: toastManager.alignment ?? .bottom)
    }
}


@available(iOS 16.0, *)
public extension View {
    func toast() -> some View {
        self.overlay(alignment: .bottom) {
            ToastView()
        }
    }
}
