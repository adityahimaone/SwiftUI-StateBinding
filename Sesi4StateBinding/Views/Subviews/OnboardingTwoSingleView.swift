//
//  OnboardingTwoSingleView.swift
//  Sesi4StateBinding
//
//  Created by Aditya Himawan on 25/01/24.
//

import SwiftUI

struct OnboardingTwoSingleView: View {
    var content: OnboardingTwo
    var body: some View {
        ZStack() {
            Image(content.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(){
                Spacer()
                VStack(alignment: .leading) {
                    Text(content.title)
                        .font(.custom("Inter", size: 32))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .padding(.bottom, 1)
                    Text(content.description)
                        .font(.custom("Inter", size: 16))
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .lineLimit(4)
                }
                .frame(width: 280, height: 400)
            }
        }
    }
}

#Preview {
    OnboardingTwoSingleView(content: OnboardingTwo.data[0])
}
