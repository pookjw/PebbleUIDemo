//
//  MyView.swift
//  MyApp
//
//  Created by Jinwoo Kim on 10/31/26.
//

import SwiftUI
import UIKit
import PebbleUI

struct MyView: View {
    @State private var selection = 1
    @State private var selectedColor = 0
    @State private var textSize: DynamicTypeSize?

    var body: some View {
        PebbleTabView(selection: $selection) {
            VStack(spacing: 24) {
                PebblePicker(selection: $selectedColor) {
                    Text("Red").tag(0)
                    Text("Green").tag(1)
                    Text("Blue").tag(2)
                } label: {
                    Text("Color")
                }
                DynamicTypeSizePicker(selection: $textSize)
            }
            .padding()
            .tag(0)
            .tabItem { Label("First", systemImage: "slider.horizontal.3") }

            VStack(spacing: 16) {
                SystemStatusBar()
                
                HStack(spacing: 16) {
                    ModulesClearBackgroundView(cornerRadius: 24)
                    ModulesSheerBackgroundView(cornerRadius: 24)
                    ModulesSelectedBackgroundView(cornerRadius: 24)
                }
                .frame(height: 120)
                ModulePressStateBackgroundView(cornerRadius: 24, isModuleSelected: true)
                    .frame(height: 80)
            }
            .padding()
            .tag(1)
            .tabItem { Label("Second", systemImage: "square.stack.3d.up") }
        }
    }
}

@c func makeMyViewHostingController() -> UnsafeRawPointer {
    let ref = Unmanaged.passRetained(UIHostingController(rootView: MyView()))
        .toOpaque()
    return UnsafeRawPointer(ref)
}
