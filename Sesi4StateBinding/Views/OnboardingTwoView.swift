//
//  OnboardingTwoView.swift
//  Sesi4StateBinding
//
//  Created by Aditya Himawan on 25/01/24.
//

import SwiftUI

struct OnboardingTwoView: View {
    private let tabs: [OnboardingTwo] = OnboardingTwo.data
    private let dotIndicator = UIPageControl.appearance()
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            ZStack {
                Image(tabs[selectedTab].image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .ignoresSafeArea()
                    .padding(.top, 20)
            }
            TabView(selection: $selectedTab) {
                ForEach(tabs) { tab in
                    Group {
                        OnboardingTwoSingleView(content: tab)
                    }
                    .tag(tab.tag)
                }
            }
            .padding(.bottom, 40)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .animation(.easeInOut, value: selectedTab)
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingTwoView()
}
