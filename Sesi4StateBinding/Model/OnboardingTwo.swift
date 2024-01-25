//
//  OnboardingTwo.swift
//  Sesi4StateBinding
//
//  Created by Aditya Himawan on 25/01/24.
//

import Foundation

struct OnboardingTwo: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var tag: Int
}

extension OnboardingTwo {
    static let data: [OnboardingTwo] = [
        OnboardingTwo(
            image: "clear1",
            title: "Treat Yourself",
            description: "Because it's productive to after a job well done, Clear is 100% free to use and also a treat to shop in. Happylisting",
            tag: 0
        ),
        OnboardingTwo(
            image: "clear2",
            title: "Insanely Personalizable",
            description: "Because it's productive to after a job well done, Clear is 100% free to use and also a treat to shop in. \nHappylisting",
            tag: 1
        ),
        OnboardingTwo(
            image: "clear3",
            title: "Starngely Addictive",
            description: "Because it's productive to after a job well done, Clear is 100% free to use and also a treat to shop in. \nHappylisting",
            tag: 2
        ),
        OnboardingTwo(
            image: "clear4",
            title: "Remarkably Fluent",
            description: "Because it's productive to after a job well done, Clear is 100% free to use and also a treat to shop in. \nHappylisting",
            tag: 3
        ),
        OnboardingTwo(
            image: "clear5",
            title: "Radically Simple",
            description: "Because it's productive to after a job well done, Clear is 100% free to use and also a treat to shop in. \nHappylisting",
            tag: 4
        ),
        OnboardingTwo(
            image: "clear6",
            title: "Your Life in Lists",
            description: "Because it's productive to after a job well done, Clear is 100% free to use and also a treat to shop in. \nHappylisting",
            tag: 5
        ),
    ]
}
