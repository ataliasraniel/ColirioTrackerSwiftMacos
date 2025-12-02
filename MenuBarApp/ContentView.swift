//
//  ContentView.swift
//  MenuBarApp
//
//  Created by Atalias Raniel on 02/12/25.
//

import SwiftUI

struct Item: Identifiable {
    var id: Int
    var title: String
    var isSelected: Bool
}

struct ContentView: View {
    @State private var toggles: [Item] = [
        Item(id: 1, title: "11:00PM", isSelected: false),
        Item(id: 2, title: "03:00PM", isSelected: false),
        Item( id:3, title: "6:00PM", isSelected: false),
        Item( id:4, title: "9:30PM", isSelected: false),
    ]
	
	func restart() {
		for i in toggles.indices {
			toggles[i].isSelected = false
		}
	}
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: "eyedropper.halffull")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Colírio Tracker").font(.headline).padding(.bottom, 12)
            ForEach($toggles) {$item in HStack(){
                Text(item.isSelected ? "Concluído ✔️" : item.title)
                Spacer()
				Toggle("", isOn: $item.isSelected)}.toggleStyle(.switch,).tint(.green)
            }
            Button("Reiniciar", systemImage: "arrow.clockwise"){
				restart()
			}.buttonStyle(.bordered).frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding().frame(
            maxWidth: .infinity,
        )
    }
}

#Preview {
    ContentView()
}
