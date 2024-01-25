//
//  CustomPageIndicator.swift
//  Sesi4StateBinding
//
//  Created by Aditya Himawan on 26/01/24.
//

import SwiftUI

struct CustomPageIndicator: View {
    let count: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<count, id:\.self) { page in
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(page == selectedTab ? .blue : .gray)
                    .onTapGesture {
                        selectedTab = page
                    }
            }
        }
        .animation(.easeOut, value: selectedTab)
    }
}

#Preview {
    @State var selectedTab = 0
    return CustomPageIndicator(count: 6, selectedTab: $selectedTab)
}
